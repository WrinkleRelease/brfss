# This file produces takes two files: (1) the master CSV and a CSV file I compiled for each year that
# contains the sections, variable names, datatypes and indices (brfss-YEAR-var-sec-type.csv). 

# When run, this script produces a CSV for each section. These will be used to populate the db.

import pandas as pd
import os

# Input files
input_csv = "/path/to/brfss-2023-var-sec-type.csv"
data_csv = "/path/to/brfss_2023.csv"
output_dir = "/path/to/output_sections"

# Create output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

# Read the section and column information
section_info = pd.read_csv(input_csv)

# Read the main data CSV
data = pd.read_csv(data_csv)

# Group columns by section
sections = section_info.groupby("Section")

# Process each section
for section, group in sections:
    # Get the column indices for the current section
    column_indices = group["Index"].tolist()
    column_indices = [int(idx) for idx in column_indices]  # Ensure indices are integers

    # Extract the corresponding columns from the main data
    section_data = data.iloc[:, column_indices]

    # Generate a valid filename for the section
    section_name = section.replace(" ", "_").lower()
    output_file = os.path.join(output_dir, f"{section_name}.csv")

    # Save the section data to a new CSV file
    section_data.to_csv(output_file, index=False)

    print(f"Saved section '{section}' to {output_file}")