library(tidyr) 
library(readr)

# Define file path for each dataset
NYT_data_filepath <- "UCP_data.csv"
ORR_data_filepath <- "UCP_ORR_datasets.xlsx"

# Defining Regions for defining function
# Central America
central_america_countries <- c(
  "Honduras", "Guatemala", "El Salvador", "Nicaragua", "Costa Rica", "Belize", "Panama"
)

# North America
north_america_countries <- c(
  "Mexico", "United States of America", "Canada"
)

# South America
south_america_countries <- c(
  "Colombia", "Ecuador", "Peru", "Chile", "Brazil", "Bolivia", 
  "Argentina", "Venezuela", "Uruguay", "Paraguay", "Guyana", "Suriname", "French Guiana"
)

# Asia
asia_countries <- c("China", "Vietnam", "India", "Bangladesh", "Sri Lanka", "Nepal", "Pakistan", 
  "Armenia", "Azerbaijan", "Mongolia", "Afghanistan", "Laos", "Kyrgyzstan", 
  "Uzbekistan", "Tajikistan", "Kazakhstan", "Turkmenistan", "Japan", "Philippines", "Georgia")

# Caribbean
caribbean_countries <- c("Cuba", "Dominican Republic", "Haiti", "Bahamas", "Jamaica", 
  "Trinidad and Tobago", "Turks And Caicos Islands", "Cayman Islands", "Guadeloupe")

# Africa
africa_countries <- c("Ethiopia", "Ghana", "Nigeria", "Angola", "Senegal", "Guinea", "Somalia", 
  "Gambia", "Algeria", "Sierra Leone", "Liberia", "Sudan", "Zimbabwe", 
  "Burundi", "Cameroon", "Chad", "Ivory Coast", "South Sudan", 
  "Dem Rep Of The Congo", "Eritrea", "Kenya", "Equatorial Guinea", 
  "Togo", "Guinea-Bissau", "Mauritania", "South Africa", "Tanzania", "Uganda",
  "Congo")

# Europe
europe_countries <- c("Hungary", "Ireland", "Italy", "United Kingdom", "Albania", 
  "Romania", "Spain", "Germany", "France", "Ukraine", "Poland", 
  "Belgium", "Switzerland", "Sweden", "Belarus", "Slovakia", 
  "Serbia", "Kosovo", "Moldova", "Portugal", "Russia")

# Middle East
middle_east_countries <- c(
  "Iraq", "Jordan", "Turkey", "Saudi Arabia", "Syria", 
  "Israel", "Lebanon", "Iran", "Egypt")



