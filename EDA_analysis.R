#Analysis

# Source Scripts
source("UCP_analysis_utils.R")
source("UCP_config.R")

# import libraries
library(tidyverse)
library(readr)

# Read in NYT data 
nyt_data <- read_NYT_csv(NYT_data_filepath)

# Read in ORR data (Will create data frames for each excel sheet)
orr_data <- read_ORR_excel_sheets(ORR_data_filepath)

# Clean NYT Data 
nyt_data <- clean_nyt_data(nyt_data)

# 1. Arrivals section 
# Total number of unique countries and regions represented
arrivals <- nyt_data %>%
  summarise(`Number of Countries` = n_distinct(country_of_origin),
            `Number of Regions` = n_distinct(region))

# Total Number of Arrivals per year
arrival_by_year <- nyt_data %>%
  group_by(entry_year) %>%
  summarise()
  
  
# Determine Top Ten Countries with the Largest Number of Arrivals
top_10_country <- nyt_data %>%
  group_by(country_of_origin) %>%
  summarise(`Number of Arrivals` = n()) %>%
  arrange(desc(`Number of Arrivals`)) %>%
  slice(1:10) %>%
  pivot_wider(names_from = country_of_origin,
              values_from = `Number of Arrivals`) %>%
  mutate(Country = "Number of Arrivals") %>% 
  relocate(Country, .before = 1)  

# Determine number of arrivals by region
Top_region <- nyt_data %>%
  group_by(region) %>%
  summarise(`Number of Arrivals` = n()) %>%
  arrange(desc(`Number of Arrivals`)) %>%
  pivot_wider(names_from = region,
              values_from = `Number of Arrivals`)%>%
  mutate(Region = "Number of Arrivals") %>% 
  relocate(Region, .before = 1) 

# Determine Countries Percentage table 
Country <- Country %>%
  mutate(FY2014 = if_else(FY2014 == "0.28999999999999998", "0.28", FY2014)) #Format 

# Determine top 5 languages
top_5_language <- Language %>%
  pivot_wider(names_from = "Language",
              values_from = "FY2024") %>%
  mutate(Language = "Percentage of languages") %>%
  relocate(Language, .before = 1)

# Determine Arrivals by gender 
wide_gender <- Gender %>%
  pivot_longer(cols = c(Males, Females), names_to = "Gender", values_to = "Percentage") %>%
  pivot_wider(names_from = Year, values_from = Percentage) %>%
  select(Gender, starts_with("FY2012"):starts_with("FY2024")) #rearrange columns

# Determine Arrivals by age 
arrival_by_age <- AGE %>%
  select(Age, starts_with("FY2012"):starts_with("FY2024")) #rearrange columns

# 2. Detainment in ORR custody
# Determine Average days detained by year
avg_days_detained_year <- `Length of Care` %>%
  pivot_longer(cols = everything(), names_to = "Year", values_to = "Average_Days") %>%
  mutate(Detained = "Average Number of Days") %>%
  pivot_wider(names_from = Year, values_from = Average_Days) %>%
  select(Detained, order(colnames(.))) # Ensures Detained is first and years are in order

# AVG Days Detained by Region 
avg_days_detained_region <- nyt_data %>%
  group_by(region) %>%
  summarise(`Average Days Detained` = round(mean(days_detained), 2)) %>% # Round to 2 decimal points
  arrange(`Average Days Detained`) %>%
  pivot_wider(names_from = region, values_from = `Average Days Detained`) %>%
  mutate(Region = "Avg Number of Days") %>%
  select(Region, order(colnames(.)))

# 3. Release to Sponsors

# Release to sponsors by year
release_total_by_year <- nyt_data %>%
  group_by(entry_year) %>%
  summarise(`Children released to sponsor` = n()) %>%
  pivot_wider(names_from = entry_year, values_from = `Children released to sponsor`) %>%
  mutate(Year = "Children released to sponsor") %>%
  select(Year, order(colnames(.)))

# Summarize and display the top 10 states by number of releases 
release_total_by_state <- nyt_data %>%
  filter(!is.na(state)) %>%
  group_by(state) %>%
  summarise(`Number of Minors` = n()) %>%
  arrange(desc(`Number of Minors`)) %>%
  slice(1:10) %>% # Select top 10 states
  rename(State = state) %>%
  pivot_wider(names_from = State, values_from = `Number of Minors`) %>%
  mutate(State = "number released") %>%
  select(State, order(colnames(.)))

  

