# Load necessary libraries
library(dplyr)

# Read the CSV file (replace 'your_data_file.csv' with the actual file path)
data <- read.csv("data.csv")

# Summarize the count of crashes by STATE_NAME, year, and month
crash_summary <- data %>%
  group_by(STATE_NAME, Year, Month) %>%
  summarise(Count_of_Crash = n())

# View the summarized data
#print(crash_summary)

#write.csv(crash_summary, "trendd.csv", row.names = FALSE)

# Group by 'State' and calculate the number of crashes per state, 
# then select relevant columns
selected_data <- data %>%
  group_by(STATE_NAME, Day.of.week, Time.of.day, Dayweek) %>%
  summarise(CrashCount = n()) %>%
  ungroup()

# View the resulting data
print(selected_data)

# Optionally, save the selected and aggregated data to a new CSV file
write.csv(selected_data, "sunburst.csv", row.names = FALSE)
