# Load necessary libraries
library(dplyr)

# Read the CSV file (replace 'your_data_file.csv' with the actual file path)
data <- read.csv("data.csv")

# Summarize the count of crashes by STATE_NAME, year, and month
crash_summary <- data %>%
  group_by(STATE_NAME, Year, Month) %>%
  summarise(Count_of_Crash = n())

# View the summarized data
print(crash_summary)

# Optionally, save the summary to a new CSV file
write.csv(crash_summary, "trendd.csv", row.names = FALSE)
