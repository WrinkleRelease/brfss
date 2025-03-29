# This script was used to transform the LPCC Codebook HTML format provided by the CDC in to markdown.
# Prior to running the script, I manually deleted the front matter comprised the CSS and <script></script> sections,
# eliminated all tables marked "footer" and cleaned up � (unicode replacement character). 

# Ver 1.0 

import argparse
from bs4 import BeautifulSoup

def parse_html_to_markdown(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8', errors='ignore') as file:
        soup = BeautifulSoup(file, 'html.parser')

    with open(output_file, 'w', encoding='utf-8') as output:
        sections = soup.find_all('table', class_='table')
        current_section = None

        for table in sections:
            # Extract metadata from the first row
            metadata_row = table.find('td', class_='linecontent')
            if metadata_row:
                metadata_text = metadata_row.get_text(separator="\n").strip()
                metadata_lines = metadata_text.split("\n")
                metadata_dict = {}
                for line in metadata_lines:
                    if ": " in line:
                        key, value = line.split(": ", 1)
                        metadata_dict[key.strip()] = value.strip()
                    else:
                        metadata_dict[line.strip()] = ""

                # Write section header if it's the first instance
                section_name = metadata_dict.get("Section Name", "")
                if section_name != current_section:
                    output.write(f"##  {section_name}\n\n")
                    current_section = section_name

                # Write label header
                label = metadata_dict.get("Label", "")
                output.write(f"### {label}\n\n")

                # Write metadata
                for key, value in metadata_dict.items():
                    output.write(f"{key}: `{value}`\n")
                output.write("\n")

            # Extract table data
            headers = table.find_all('th', class_='header')
            if headers:
                # Write table header
                header_row = "| " + " | ".join(header.get_text(strip=True) for header in headers) + " |\n"
                spacer_row = "| " + " | ".join("---" for _ in headers) + " |\n"
                output.write(header_row)
                output.write(spacer_row)

                # Write table rows
                rows = table.find_all('tr')[1:]  # Skip the header row
                for row in rows:
                    cells = row.find_all('td')
                    if cells:
                        row_data = "| " + " | ".join(cell.get_text(strip=True) for cell in cells) + " |\n"
                        output.write(row_data)

            output.write("\n<br>\n\n")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert HTML data to formatted Markdown.")
    parser.add_argument("input_file", help="Path to the input HTML file.")
    parser.add_argument("output_file", help="Path to the output Markdown file.")
    args = parser.parse_args()

    parse_html_to_markdown(args.input_file, args.output_file)