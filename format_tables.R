# Source Scripts
source("UCP_analysis_utils.R")
source("UCP_config.R")
source("EDA.R")


# Import Libraries
library(tidyverse)
library(flextable)


# Format data frames to include in analysis 
# Arrivals (country and region)
country_percent <- flextable(Country) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()     


# Arrivals by region 
region_arrivals <- flextable(arrivals) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()                                # Adjust column widths


# Top ten countries for number of arrivals
top_ten_country_arrivals <- flextable(top_10_country) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()  

# Top 5 languages spoken by percentage 2024 
top_five_language <- flextable(top_5_language) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()    

# Country Percentage 
country_percent <- flextable(country_percent) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()       

# Gender
gender_arrivals <- flextable(wide_gender) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()              

# Age 
age_arrivals <- flextable(arrival_by_age) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()    

# Avg Days detained in ORR Custody
avg_days_detained <- flextable(avg_days_detained_year) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()     

# Avg days detained by region 
days_detained_region <- flextable(avg_days_detained_region) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()                                # Adjust column widths


# Minors released by year
release_total_by_year <- flextable(release_total_by_year) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit() 


# Minors released by year
release_total_by_state <- flextable(release_total_by_state) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit() 
