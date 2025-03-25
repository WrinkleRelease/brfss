This repository aims to provide instructions on how to run the CDC's BRFSS data in a PostgreSQL database while accessing it from RStudio to perform analysis.

## | Obtain the BRFSS File

The CDC hosts the data file in either `.xpt` or `.asc` format. They can be downloaded, zipped, from [this location](https://www.cdc.gov/brfss/annual_data/annual_2023.html). Scroll down to the section entitled **Data Files** and choose the format you prefer.

## Convert XPT to a SQL Friendly Format

The `.r` file I used to convert the XPT file to CSV is included. The resulting `.csv` file should reside in the `/data/` folder. Postgres will copy the contents and create the db.

## | Setting up a Docker PostgreSQL instance

Install Docker Desktop and get the latest PostgreSQL image. The `docker-compose.yml` files found in brfss-2022-container and brfss-2023-container are the instructions for starting up your Postgres db. This file pulls from `data/init.sql` to create the tables. The compose file is structured to give a persistent db even if the container is stopped and restarted.

The `.csv` file `init.sql` will pull from to make the db with all its tables is named `brfss_2023.csv` and `brfss_2022.csv` (respectively) in the init files. You can change that if you name your csv file something different.  The csv file only needs to be present the firs time, upon db creation.

## | Connecting to the database from RStudio

<!-- Instructions to follow -->

## | Schema

The BRFSS data has been divided into multiple tables with each table representing a Section and the questions in that Section being brought in as columns. This modular approach to the BRFSS allows for complex queries while reducing the memory footprint of the data itself.

___

# Supplemental Material

The following supplemental material is provided for each year.

**Codebook**: The codebook gives the variable name, location, and frequency of values for all reporting areas combined for the landline and cell phone data set. The CDC distributes the codebook as an `.html` file which can be found on their site. Through python scripts, I've converted the codebook into a `.md` file with section and question headers, which greatly reduce seek time when looking up a variable, its SAS code and answer codes.

**Variable Layout**: Knowing the variable layout helps when building a new schema and creating queries. The variable layout has been included as both an `.md` and `.csv` file.