#Analysis

#Exploratory Data Analysis 
library(tidyverse)
library(readr)

#Source Scripts
source("UCP_analysis_utils.R")
source("UCP_config.R")

#Read in NYT data 
nyt_data <- read_NYT_csv(NYT_data_filepath)

#Read in ORR data (Will create dataframe for each excel sheet)
orr_data <- read_ORR_excel_sheets(ORR_data_filepath)

#Clean NYT Data 
nyt_data <- clean_nyt_data(nyt_data)

# Arrivals 
# Total number of unique countries and regions represented
arrivals <- nyt_data %>%
  summarise(`Number of Countries` = n_distinct(country_of_origin),
            `Number of Regions` = n_distinct(region))

# Arrivals by year
arrival_by_year <- nyt_data %>%
  group_by(entry_year) %>%
  summarise()
  
  
# Determine top ten countries for largest number of arrivals 
top_10_country <- nyt_data %>%
  group_by(country_of_origin) %>%
  summarise(`Number of Arrivals` = n()) %>%
  arrange(desc(`Number of Arrivals`)) %>%
  slice(1:10) %>%
  pivot_wider(names_from = country_of_origin,
              values_from = `Number of Arrivals`) %>%
  mutate(Country = "Number of Arrivals") %>% 
  relocate(Country, .before = 1)  

Top_region <- nyt_data %>%
  group_by(region) %>%
  summarise(`Number of Arrivals` = n()) %>%
  arrange(desc(`Number of Arrivals`)) %>%
  pivot_wider(names_from = region,
              values_from = `Number of Arrivals`)%>%
  mutate(Region = "Number of Arrivals") %>% 
  relocate(Region, .before = 1) 

# Countries Percentage table 
Country <- Country %>%
  mutate(FY2014 = if_else(FY2014 == "0.28999999999999998", "0.28", FY2014))

# Arrivals by gender 


# Detainment (In ORR custody)



