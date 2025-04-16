install.packages("haven")
library(haven)

# Read the file in and store as a variable called 'data'
# R needs the \\ in the path
data <- read.xport("C:\\Path\\To\\Your\\XPT\\FILE-NAME.XPT")

# State the path to the output file.
csv_file <- "C:\\Path\\To\\Your\\Output\\Output-file-name.csv"

write.csv(data, csv_file, row.names = FALSE)

# Print a message indicating the conversion is complete
cat("Conversion complete! CSV file saved at:", csv_file, "\n")
