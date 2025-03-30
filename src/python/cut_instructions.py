# When run, this script produces a CSV for each section. These will be used to populate the db.

import pandas as pd
import os

# input_csv is the file that contains the section name, variable, datatype and 0-based col index
# data_csv is the master csv file, the one converted from an XPT
input_csv = "/path/to/var-sex-type-2022.csv"
data_csv = "/path/to/data.csv"
output_dir = "/path/to/project/output/"

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