# This file creates table commands and copy commands from the given var-sec-type.csv file

import pandas as pd
import os

# Input CSV file
input_csv = "/path/to/brfss-2023-var-sec-type.csv"
# Output files
create_table_file = "/output/create_tables.sql"
copy_commands_file ="/output/copy_commands.sql"

# Read the CSV file
df = pd.read_csv(input_csv)

# Group by Section
sections = df.groupby("Section")

# Part 1: Generate CREATE TABLE statements
with open(create_table_file, "w") as create_file:
    for section, group in sections:
        # Start the CREATE TABLE statement
        create_file.write(f"CREATE TABLE IF NOT EXISTS {section} (\n")
        # Add columns and their datatypes
        for _, row in group.iterrows():
            create_file.write(f"    {row['Variable']} {row['Datatype']},\n")
        # Remove the trailing comma and close the statement
        create_file.seek(create_file.tell() - 2, os.SEEK_SET)  # Remove last comma
        create_file.write("\n);\n\n")

print(f"CREATE TABLE statements written to {create_table_file}")

# Part 2: Generate \copy commands
with open(copy_commands_file, "w") as copy_file:
    for section, group in sections:
        # Generate the \copy command for the current section
        copy_file.write(
            f"\\copy {section} ({', '.join(group['Variable'])}) FROM '/docker-entrypoint-initdb.d/{section}.csv' CSV HEADER;\n"
        )

print(f"\\copy commands written to {copy_commands_file}")