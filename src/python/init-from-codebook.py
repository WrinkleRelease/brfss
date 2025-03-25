# This script produces an init.sql file from the brfss codebook .md files I created

import re
import sys

if len(sys.argv) != 3:
    print("Usage: python init-from-codebook.py <codebook_path> <output_sql_path>")
    sys.exit(1)

codebook_path = sys.argv[1]
output_sql_path = sys.argv[2]

def parse_codebook_and_generate_sql(codebook_path, output_sql_path):
    with open(codebook_path, "r", encoding="utf-8") as codebook, open(output_sql_path, "w", encoding="utf-8") as output_sql:
        current_table = None
        columns = []
        column_name = None  # Initialize column_name to avoid UnboundLocalError

        # Write the header for the SQL file
        output_sql.write("-- Auto-generated init.sql\n\n")

        for line in codebook:
            # Match H2 headers (table names)
            h2_match = re.match(r"^##\s+(.*)", line)
            if h2_match:
                # If a new table starts, write the previous table's SQL
                if current_table and columns:
                    write_table_sql(output_sql, current_table, columns)
                    columns = []  # Reset columns for the next table

                # Set the new table name
                current_table = h2_match.group(1).strip().lower().replace(" ", "_")

            # Match SAS Variable Name
            sas_match = re.match(r"^SAS Variable Name:\s+`(.+?)`", line)
            if sas_match:
                column_name = sas_match.group(1).strip().lower()

            # Match Type of Variable
            type_match = re.match(r"^Type of Variable:\s+`(.+?)`", line)
            if type_match and column_name:
                var_type = type_match.group(1).strip()
                # Map variable type to PostgreSQL data type
                data_type = "INT" if var_type.upper() == "NUM" else "VARCHAR(255)"
                columns.append((column_name, data_type))
                column_name = None  # Reset column_name after processing

        # Write the last table's SQL
        if current_table and columns:
            write_table_sql(output_sql, current_table, columns)

def write_table_sql(output_sql, table_name, columns):
    # Write the CREATE TABLE statement
    output_sql.write(f"-- Table: {table_name}\n")
    output_sql.write(f"CREATE TABLE IF NOT EXISTS {table_name} (\n")
    output_sql.write("    id SERIAL PRIMARY KEY,\n")
    for column_name, data_type in columns:
        output_sql.write(f"    {column_name} {data_type},\n")
    output_sql.write(");\n\n")

    # Write the COPY statement
    column_names = ", ".join([col[0] for col in columns])
    output_sql.write(f"COPY {table_name} ({column_names})\n")
    output_sql.write(f"FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'\n")
    output_sql.write("DELIMITER ','\n")
    output_sql.write("CSV HEADER;\n\n")

if __name__ == "__main__":
    parse_codebook_and_generate_sql(codebook_path, output_sql_path)
    print(f"SQL file generated: {output_sql_path}")