## Plots
library(tidyverse)

#Source Scripts
source("UCP_analysis_utils.R")
source("UCP_config.R")

#Read in NYT data 
nyt_data <- read_NYT_csv(NYT_data_filepath)

#Read in ORR data (Will create dataframe for each sheet)
orr_data <- read_ORR_excel_sheets(ORR_data_filepath)

#Clean NYT Data 
nyt_data <- clean_nyt_data(nyt_data)

# Calculate total number of arrivals each year
total_arrivals_year <- nyt_data %>%
  summarise(
    total_arrivals = n(),
    .by = entry_year
  )

# Plot: Total Arrivals Each Year
total_arrivals_year %>%
  ggplot(aes(x = entry_year, y = total_arrivals)) +
  geom_line(color = "#89CFF0", size = 1) +  # Light blue line
  geom_point(size = 3, color = "#4682B4", shape = 16) +  # Blue points
  labs(
    title = "Arrivals Per Year",
    x = "Year of Entry",
    y = "Total Arrivals"
  ) +
  scale_x_continuous(breaks = seq(min(total_arrivals_year$entry_year), max(total_arrivals_year$entry_year), by = 1)) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.subtitle = element_text(size = 12, hjust = 0.5, color = "gray40"),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(size = 11),
    panel.grid.major = element_line(color = "gray85", size = 0.4),
    panel.grid.minor = element_blank()
  )

# Summarize data for the tree map
arrivals_by_region <- nyt_data %>%
  group_by(region) %>%
  summarise(total_arrivals = n(), .groups = "drop")

# Create the tree map
arrivals_by_region %>%
  ggplot(aes(
    area = total_arrivals,
    fill = region
  )) +
  geom_treemap() +
  scale_fill_brewer(palette = "Blues") +  # Use a blue color palette
  labs(
    title = "Arrivals by Region",
    fill = "region"
  ) +
  theme_minimal(base_size = 15) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.subtitle = element_text(size = 12, hjust = 0.5),
    legend.position = "bottom"
  )

# Calculate percentage of gender by year
gender_percentage <- nyt_data %>%
  group_by(entry_year, gender) %>%
  summarise(count = n(), .groups = "drop") %>%
  group_by(entry_year) %>%
  mutate(
    total = sum(count),
    percentage = round((count / total) * 100, 2)
  ) %>%
  select(entry_year, gender, percentage) %>%
  pivot_wider(names_from = gender, values_from = percentage, values_fill = 0)


# Transform the dataset into long format
gender_data_filtered <- Gender %>%
  filter(Year %in% paste0("FY", 2015:2023)) %>%
  pivot_longer(
    cols = c(Males, Females),
    names_to = "Gender",
    values_to = "Proportion"
  )

# Create the stacked horizontal bar chart
ggplot(gender_data_long, aes(y = Year, x = Proportion, fill = Gender)) +
  geom_bar(stat = "identity", position = "fill") +  # Stacked bar chart
  scale_x_continuous(labels = scales::percent) +    # Convert x-axis to percentage
  scale_fill_manual(values = c("#4682B4", "#B0C4DE")) +  # Darker blue for Males, lighter blue for Females
  labs(
    title = "Gender Percentage of Arrivals by Year",
    x = "Gender Percentage",
    y = "Fiscal Year",
    fill = "Gender"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5, size = 12),
    axis.title.y = element_text(face = "bold"),
    axis.title.x = element_text(face = "bold"),
    axis.text.y = element_text(size = 11),
    axis.text.x = element_text(size = 11),
    legend.position = "right"
  )


# Age range
age_data_long <- AGE %>%
  pivot_longer(
    cols = starts_with("FY"),
    names_to = "Year",
    values_to = "Proportion"
  )

# Transform the dataset into long format
age_data_long <- AGE %>%
  pivot_longer(
    cols = starts_with("FY"),
    names_to = "Year",
    values_to = "Proportion"
  )

# Filter for FY2015 to FY2023
age_data_filtered <- age_data_long %>%
  filter(Year %in% paste0("FY", 2015:2023))

# Create the stacked bar chart
ggplot(age_data_filtered, aes(x = Year, y = Proportion, fill = Age)) +
  geom_bar(stat = "identity", position = "fill") +  # Stacked bar chart
  scale_y_continuous(labels = scales::percent) +    # Convert y-axis to percentage
  scale_fill_brewer(palette = "Blues") +            # Use a blue palette
  labs(
    title = "Age Range Per Year",
    x = "Fiscal Year",
    y = "Percentage",
    fill = "Age Range"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5, size = 12),
    axis.title = element_text(face = "bold"),
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "right"
  )


#Days Detained per Year

# Calculate the average number of days detained per year
average_days_detained <- nyt_data %>%
  group_by(entry_year) %>%
  summarise(
    avg_days = round(mean(days_detained, na.rm = TRUE), 2),  # Calculate average, round to 2 decimals
    .groups = "drop"
  )

# Create the bar chart
ggplot(average_days_detained, aes(x = entry_year, y = avg_days)) +
  geom_bar(stat = "identity", fill = "#4682B4", color = "black", width = 0.7) +  # Bar chart
  labs(
    title = "Average Number of Days in ORR Custody",
    x = "Fiscal Year",
    y = "Average Days in custody"
  ) +
  scale_x_continuous(breaks = seq(min(average_days_detained$entry_year), max(average_days_detained$entry_year), by = 1)) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.subtitle = element_text(size = 12, hjust = 0.5, color = "gray40"),
    axis.title.x = element_text(face = "bold"),
    axis.title.y = element_text(face = "bold"),
    axis.text = element_text(size = 12)
  )
