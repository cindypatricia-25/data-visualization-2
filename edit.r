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
  group_by(STATE_NAME, Time.of.day, Dayweek) %>%
  summarise(CrashCount = n()) %>%
  ungroup()

# View the resulting data
#print(selected_data)

# Optionally, save the selected and aggregated data to a new CSV file

#write.csv(selected_data, "sunbursttt.csv", row.names = FALSE)

# Load necessary libraries
library(dplyr)

# Create the dataset in the desired format by counting occurrences of each AgeGroup and Gender
formatted_data <- data %>%
  group_by(Age.Group, Gender) %>%
  summarise(CrashCount = n(), .groups = 'drop')

# View the transformed dataset
#print(formatted_data)

#write.csv(formatted_data, "genderage.csv", row.names = FALSE)

crash_count_by_remoteness <- data %>%
  group_by(STATE_NAME, National.Remoteness.Areas) %>%
  summarise(CrashCount = n())

# Print the result
#print(crash_count_by_remoteness)

# Optionally, write the result to a CSV file
#write.csv(crash_count_by_remoteness, "crash_count_by_remoteness.csv", row.names = FALSE)



bus_involve <- data %>% 
  group_by(Bus.Involvement) %>%
    summarise(CrashCount = n())

print(bus_involve)

heavy_involve <- data %>%
  group_by(Heavy.Rigid.Truck.Involvement) %>%
  summarise(CrashCount = n())

  print(heavy_involve)

remoteness <- data %>%
  group_by(STATE_NAME, National.Remoteness.Areas) %>%
  summarise(CountCrash = n())

print(remoteness)

#write.csv(remoteness, "remoteness.csv", row.names = FALSE)

roadtype <- data %>%
  group_by(STATE_NAME, National.Road.Type) %>%
  summarise(CountCrash = n())

print(roadtype)

write.csv(roadtype, "roadtype.csv", row.names = FALSE)