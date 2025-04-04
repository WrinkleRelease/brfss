This repository aims to provide instructions on how to run the CDC's BRFSS data for 2022 and 2023 in a PostgreSQL database while accessing it from RStudio to perform analysis. 

Before getting into that, let me jump right into what is, perhaps, of greatest utility: the codebooks for [2023](https://github.com/datatimp/brfss/blob/main/brfss-2023/supplemental/llcp-2023-codebook.md) and [2022](https://github.com/datatimp/brfss/blob/main/brfss-2022/supplemental/llcp-2022-codebook.md) re-formatted in markdown. THe outline makes these documents much more manageable.

The schema presented here divide the BRFSS into multiples tables grouped by section name (as indicated in the LLCP codebook). The resulting SQL db for each year is around half that of the XPT file. This size reduction, along with the ability to only pull the table or column you need into R, means a faster, more responsive analysis environment. 

<br>

# Obtain the BRFSS File

The CDC hosts the data file in either `.xpt` or `.asc` format. They can be downloaded, zipped, from [this location](https://www.cdc.gov/brfss/annual_data/annual_2023.html). Scroll down to the section entitled **Data Files** and choose the format you prefer. I worked with the `.xpt` file as the `.asc` requires a separate file (known as a dictionary file) to correctly assign column names and etc.

<br>

# Convert XPT to a SQL Friendly Format

I found two methods:

**1. SAS Universal Viewer**
SAS produces the free [SAS Universal Viewer](https://support.sas.com/downloads/browse.htm?cat=74) that will open `.xpt` files and export `.csv`. You'll need an account to download the tool. The csv file it produced was nearly 100MB smaller than the version produced by RStudio.

**2. Using a simple `.r` script in RStudio**
The `.r` file I used to convert the XPT file to CSV is included.

<br>

# Prepare the CSV

Rewrite the headers in lowercase if you want:
```shell
awk 'BEGIN{FS=OFS=","} NR==1 {for (i=1; i<=NF; i++) $i=tolower($i)} 1' input.csv > output.csv
```

As of the publication of this documentation, both years represented here have columns present in the dataset but missing from the codebook. 

To find these indices of these columns then remove them use `find_column_indices.py` in the `/src` folder and modify the path to point to your csv file. Next, run `column_remover.py`. 

<br>

# SQL Schema & Splitting the CSV

My Postgres schema is based on the codebook, which lists the SAS Variable names along with the Section Name. Each Section is its own table, and each column is an SAS Variable in that section. 

Using a csv file I compiled that lists the section name, variable, datatype, and index, I used a python script to split the master CSV into smaller files -- one csv per section. 

The python file `cut_instructions.py` is in the `src/python` folder.

Move all these files into the `container-name/data/` folder.

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
\copy table_name ("columns","columns") from '/docker-entrypoint-initdb.d/file_name.csv' delimiter ',' CSV
HEADER;
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

I omitted the columns from the dataset that didn't appear in the codebook. After all, without knowing the question or how the answered were coded, the columns are useless.

## 2022

| SAS Variable | 0-Based Column No. | In Codebook | In Dataset | Remediation      |
|--------------|---------------|-------------|------------|------------------|
| `usemrjn4`   | 209           | No          | Yes        | Removed from csv |
| `diabage4`   | 56            | No          | Yes        | Removed from csv |
| `numphon4`   | 61            | No          | Yes        | Removed from csv |
| `cpdemo1c`   | 62            | No          | Yes        | Removed from csv |

## 2023

| SAS Variable | 0-Based Column No. | In Codebook | In Dataset | Remediation             |
|--------------|---------------|-------------|------------|-------------------------|
| `rcsborg1`   | NA            | Yes         | No         | Omitted |
| `usemrjn4`   | 214           | No          | Yes        | Removed from csv        |
| `birthsex`   | 204           | No          | Yes        | Removed from csv        |
| `celsxbrt`   | 24            | No          | Yes        | Removed from csv        |
| `rcsgend1`   | 251           | No          | Yes        | Removed from csv        |
| `rcsxbrth`   | 252           | No          | Yes        | Removed from csv        |
| `lndsxbrt`   | 18            | No          | Yes        | Removed from csv        |
| `trnsgndr`   | 207           | No          | Yes        | Removed from csv        |
