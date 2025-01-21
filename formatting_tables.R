# Source Scripts
source("UCP_analysis_utils.R")
source("UCP_config.R")

# Import Libraries
library(tidyverse)
library(flextable)
library(readr)
library(readxl)


# Format dataframes to include in analysis 

#Arrivals (country and region)
arrivals <- flextable(arrivals_by_year) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()                                # Adjust column widths

# Arrivals by year
region_arrivals <- flextable(arrivals_by_year) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()   

#Arrivals by region 
region_arrivals <- flextable(Top_region) %>%
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

# Country Percentage 
country_percent <- flextable(country_percent) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()       

#Arrivals (country and region)
country_percent <- flextable(Country) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()     


#Arrivals by region 
region_arrivals <- flextable(arrivals) %>%
  align(align = "center", part = "all") %>% # Center-align headers and values
  bg(bg = "#20B2AA", part = "header") %>%  # Set a lighter teal color for the header background
  color(color = "white", part = "header") %>% # Set header text color to white
  autofit()                                # Adjust column widths


