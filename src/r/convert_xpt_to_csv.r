install.packages("haven")

library(haven)
brfss_data <- read_xpt("path\\to\\file-name.xpt")
write.csv(brfss_data, "brfss_2023.csv", row.names = FALSE)