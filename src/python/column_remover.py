# This scripts removes columns I don't wish to keep and operates on 0-based indices.

import pandas as pd
import sys

def remove_columns(input_file, output_file, columns_to_remove):
    """
    Removes specified columns from a CSV file and saves the result.
    
    Parameters:
    input_file (str): Path to the input CSV file
    output_file (str): Path to save the output CSV file
    columns_to_remove (list): List of column indices to remove (0-based)
    """
    try:
        # Read the CSV file
        print(f"Reading CSV file: {input_file}")
        df = pd.read_csv(input_file)
        
        # Get original column count
        original_column_count = len(df.columns)
        print(f"Original CSV has {original_column_count} columns")
        
        # Convert column indices to column names
        columns_to_drop = [df.columns[i] for i in columns_to_remove]
        print(f"Removing columns: {columns_to_drop}")
        
        # Drop the specified columns
        df = df.drop(columns=columns_to_drop)
        
        # Check new column count
        new_column_count = len(df.columns)
        print(f"New CSV will have {new_column_count} columns")
        
        # Save the result
        df.to_csv(output_file, index=False)
        print(f"CSV successfully saved to: {output_file}")
        
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)

if __name__ == "__main__":
    
    # Replace these values with your actual column indices (0-based)
    columns_to_remove = [18, 24, 204, 207, 214, 251, 252]
    
    input_file = "/path/to/brfss_2023.csv"
    output_file = "output.csv"
    
    remove_columns(input_file, output_file, columns_to_remove)