This repository aims to provide instructions on how to run the CDC's BRFSS data in a PostgreSQL database while accessing it from RStudio to perform analysis.

The schema presented here divide the BRFSS into sixty-three discreet tables grouped by section name (as indicated in the LLCP codebook). By using the markdown-formatted version of the codebook presented in this repo, one can call tables or individual variables as needed in R, saving time and resources.

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

# SQL Schema & Splitting the CSV

My Postgres schema is based on the codebook, which lists the SAS Variable names along with the Section Name. Each Section is its own table, and each column is an SAS Variable in that section. 

I was unable to successfully import the entire CSV file into a Postgres instance with an `init.sql` file. Instead, I split the full CSV into smaller files, one per section. 

```shell
cut -d ',' -f [column numbers separated by commas] ~/path/to/master.csv > section_name.csv
```
Move all these files into the `container-name/data/` folder.

<br>

# Setting up a Docker PostgreSQL instance

Install Docker Desktop and get the latest PostgreSQL image. The `docker-compose.yml` files found in brfss-2022-container and brfss-2023-container are the instructions for starting up your Postgres db. The compose file is structured to give a persistent db even if the container is stopped and restarted. 

> [!CAUTION]
> If you want to keep your Postgres data, sping the container down with `docker-compose down`. Do _not_ use `docker-compose down -v` unless you want to scrub completely and re-initialize.

Since you started the docker container without an `init.db` the Postgres db exists but has no table or data in it.

I added the tables one at a time in dBeaver then use pqsl in terminal to copy the data over. Here are the psql commands:

```shell
# first 
docker ps

# second
docker exec -it your_container_name psql -U your_user_name -d your_db_name

# third
\copy table_name ("columns","columns") from '/docker-entrypoint-initdb.d/file_name.csv' delimiter ',' CSV
HEADER;
```

You can also backup and restore the Postgres db.
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

**Variable Layout**: Knowing the variable layout helps when building a new schema and creating queries.

<br>

# Handling Errors

## 2022

## 2023

Oddly, there ended up being some SAS Variables that either weren't listed in the Codebook or were listed in the Codebook but weren't in the original XPT file. My solution was to simply remove the columns from the dataset that didn't appear in the codebook. After all, without knowing the question or how the answered were coded, the columns are useless.

| SAS Variable | Column Number | In Codebook | In Dataset | Remediation             |
|--------------|---------------|-------------|------------|-------------------------|
| `rcsborg1`   | NA            | Yes         | No         | Removed from `init.sql` |
| `usemrjn4`   | 215           | No          | Yes        | Removed from csv        |
| `birthsex`   | 205           | No          | Yes        | Removed from csv        |
| `celsxbrt`   | 25            | No          | Yes        | Removed from csv        |
| `rcsgend1`   | 252           | No          | Yes        | Removed from csv        |
| `rcsxbrth`   | 253           | No          | Yes        | Removed from csv        |
| `lndsxbrt`   | 19            | No          | Yes        | Removed from csv        |
| `trnsgndr`   | 208           | No          | Yes        | Removed from csv        |
