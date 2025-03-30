# This script will find the 0-based indices for the columns I need to omit.

import pandas as pd
import sys

def list_columns(input_file):
    """
    Displays all columns in a CSV file with their 0-based indices.
    
    Parameters:
    input_file (str): Path to the CSV file
    """
    try:
        # Read the CSV file
        print(f"Reading CSV file: {input_file}")
        df = pd.read_csv(input_file)
        
        # Get column count
        column_count = len(df.columns)
        print(f"CSV has {column_count} columns")
        
        # Display each column with its index
        print("\nColumns with 0-based indices:")
        print("-" * 50)
        for i, column_name in enumerate(df.columns):
            print(f"Index {i}: {column_name}")
        
        # Optional: Save indices to a text file
        with open("column_indices.txt", "w") as f:
            f.write("CSV Column Indices (0-based):\n")
            f.write("-" * 50 + "\n")
            for i, column_name in enumerate(df.columns):
                f.write(f"Index {i}: {column_name}\n")
        print("\nColumn indices have also been saved to 'column_indices.txt'")
            
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)

if __name__ == "__main__":
    # Replace with your CSV file path
    input_file = "/path/to/data.csv"
    
    list_columns(input_file)
