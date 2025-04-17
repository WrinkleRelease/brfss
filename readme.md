This repository aims to provide instructions on how to run the CDC's BRFSS data for 2022 and 2023 in a PostgreSQL database while accessing it from RStudio to perform analysis. 

Before getting into that, let me jump right into what is, perhaps, of greatest utility: the codebooks for [2023](https://github.com/datatimp/brfss/blob/main/brfss-2023/supplemental/llcp-2023-codebook.md) and [2022](https://github.com/datatimp/brfss/blob/main/brfss-2022/supplemental/llcp-2022-codebook.md) re-formatted in markdown. Markdown's navigable outline feature makes these documents much more manageable.

The schema presented here divide the BRFSS into multiples tables grouped by section name (as indicated in the LLCP codebook). The resulting SQL db for each year is around half that of the XPT file. This size reduction, along with the ability to only pull the table or column you need into R, means a faster, more responsive analysis environment. 

<br>

# Obtain the BRFSS File

The CDC hosts the data file in either `.xpt` or `.asc` format. They can be downloaded, zipped, from [this location](https://www.cdc.gov/brfss/annual_data/annual_2023.html). Scroll down to the section entitled **Data Files** and choose the format you prefer. I worked with the `.xpt` file as the `.asc` requires a separate file (known as a dictionary file) to correctly assign column names and etc.

<br>

# Convert XPT to a SQL Friendly Format

I found two methods:

**1. Using a simple `.r` script in RStudio**  
The `.r` file I used to convert the XPT file to CSV is included. This file was slightly larger, but didn't contain extra rows which made dealing with it slightly easier.

**2. SAS Universal Viewer**  
SAS produces the free [SAS Universal Viewer](https://support.sas.com/downloads/browse.htm?cat=74) that will open `.xpt` files and export `.csv`. You'll need an account to download the tool. The csv file it produced was nearly 100MB smaller than the version produced by RStudio; however, it contained 78 _extra rows_ added to the bottom of the file.[^1]

<br>

# Prepare the CSV

## Acknowledging Discrepancies

As of the publication of this readme, both years represented here have columns present in the dataset but missing from the codebook (all are listed at the bottom of this readme). Dealing with these columns means never extracting from the master csv in the first place. 2023 actually has a variable in the codebook not in the dataset (`rcsborg1`) and this was simply ignored when making individual csv files.

<br>

# SQL Schema & Splitting the CSV

My Postgres schema is based on the codebook, which lists the SAS Variable names along with the Section Name. Each Section is its own table, and each column is an SAS Variable in that section. 

Taking the 2023 dataset as an example:
1. Using the file `brfss-var-sec-type-2023.csv` file provided in the supplemental folder, cut the master csv file into sections. In Terminal, `cut -d ',' -f[column number(s)] input-file.csv > output-file.csv` does the job. So, `cut -d ',' -f216,217,218,219,220,221,222,223,224,225,226,227,228 inpute-file.csv > ace.csv` returns what will become the `ace` table as a csv.

2. Once all individual csv files have been created and placed in the `/data` folder, run the `create_table_and_co.py` script, making sure the paths to your files and output are correct. This will produce the commands you'll use to create the tables in SQL and copy the data in using psql, or you can use the `.sql` files I generated. 

<br>

# NULL and Blank Values

The conversion from XPT to CSV converted the blank values to `NA`. Most of the columns in the SQL db are of datatype INTEGER, which means `NA` isn't compatible. I chose to convert each `NA` to `NULL` when loading the data into Postgres and my psql commands reflect this.

<br>

# Setting up a Docker PostgreSQL instance

Install Docker Desktop and get the latest PostgreSQL image. The `docker-compose.yml` files found in `brfss-2022` and `brfss-2023` directories are the instructions for starting up your Postgres db. The compose file is structured to give a persistent db even if the container is stopped and restarted. 

> [!CAUTION]
> If you want to keep your Postgres data, spin the container down with `docker-compose down`. Do _not_ use `docker-compose down -v` unless you want to scrub completely and re-initialize. The `-v` flag scrubs the persistent volumes. You can see these volumes with `docker volume ls`. Nothing listed means no persistent docker volumes are present.

Since you started the docker container without an `init.db` the Postgres db exists but has no table or variable data in it.

I solved this by adding the tables in dBeaver then using pqsl in terminal to copy the data over. Here are the psql commands:

```shell
# first 
docker ps

# second
docker exec -it your_container_name psql -U your_user_name -d your_db_name

# third
\copy table_name ("column-name","column-name") from '/docker-entrypoint-initdb.d/file_name.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');
```

Check to see if any of your tables are empty
```sql
# A 0 indicates no rows have been inserted; thus, empty table
SELECT schemaname, relname, n_tup_ins 
FROM pg_stat_all_tables 
WHERE schemaname = 'public' 
ORDER BY n_tup_ins;
```

Backup and restore the Postgres db.
```shell
# backup sql db
docker exec -t your-container-name pg_dump -U username your-db-name > db_name_backup.sql

# restore db
docker exec -i your-container-name pg_dump -U username your-db-name > db_name_backup.sql
```

<br>

# Connecting to the database from RStudio

Establish the db connection
```R
# install needed packages 
install.packages("DBI")
install.packages("RPostgres")

# call packages on script execution
library(DBI)
library(RPostgres)

# Replace with your actual database credentials
con <- dbConnect(RPostgres::Postgres(),
                 dbname = "your_database_name",
                 host = "your_host",      # e.g., "localhost" or an IP address
                 port = 5432,             # default PostgreSQL port
                 user = "your_username",
                 password = "your_password")

```

Call tables or variables as needed
```R
# Replace 'your_table_name' with the actual table name
data <- dbReadTable(con, "your_table_name")

# Replace 'your_table_name' with the actual table name and specify the columns you want
query <- "SELECT column1, column2 FROM your_table_name"
data <- dbGetQuery(con, query)
```

Once finished, disconnect
```R
dbDisconnect(con)
```

<br>

# Supplemental Material

The following supplemental material is provided for each year.

**Codebook**: The codebook gives the variable name, location, and frequency of values for all reporting areas combined for the landline and cell phone data set. The CDC distributes the codebook as an `.html` file which can be found on their site. Through python scripts, I've converted the codebook into a `.md` file with section and question headers, which greatly reduce seek time when looking up a variable, its SAS code and answer codes.

<br>

# Handling Errors

Discrepancies between the CDC's codebook and the dataset existed for both years. 

I omitted the columns from my final SQL database that didn't appear in the codebook. 

## 2022

| SAS Variable | 1-Based Column No. | In Codebook | In Dataset | Remediation   |
|--------------|---------------|-------------|------------|--------------------|
| `diabage4`   | 57            | No          | Yes        | Not included in db |
| `numphon4`   | 62            | No          | Yes        | Not included in db |
| `cpdemo1c`   | 63            | No          | Yes        | Not included in db |
| `usemrjn4`   | 210           | No          | Yes        | Not included in db |

## 2023

| SAS Variable | 1-Based Column No. | In Codebook | In Dataset | Remediation          |
|--------------|---------------|-------------|------------|---------------------------|
| `rcsborg1`   | NA            | Yes         | No         | Omitted                   |
| `lndsxbrt`   | 19            | No          | Yes        | Not included in db        |
| `celsxbrt`   | 25            | No          | Yes        | Not included in db        |
| `birthsex`   | 205           | No          | Yes        | Not included in db        |
| `trnsgndr`   | 208           | No          | Yes        | Not included in db        |
| `usemrjn4`   | 215           | No          | Yes        | Not included in db        |
| `rcsgend1`   | 252           | No          | Yes        | Not included in db        |
| `rcsxbrth`   | 253           | No          | Yes        | Not included in db        |



[^1]: Taking the LLCP2023.XPT file as an example: the original XPT file, when read into RStudio, contains 433,323 rows. The csv file produced by SAS Universal Viewer contains 78 more rows (rows 433,325 - 443,401) most likely due to metadata being written in as extra rows. <br><br> A quick check in `terminal` using `sed -n '433325p' file-name.csv` shows us empty data. Use `sed -n '433324p' file-name.csv` to see the difference. Line 433,324 is the last line of BRFSS data (the csv starts count on the header row, while R doesn't when reading in an XPT, hence the 1 digit difference in the last line). These need to be trimmed off before going further. For this reason I stuck with the R script.
