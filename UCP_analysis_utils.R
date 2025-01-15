#Utils File 
library(readr)
library(tidyverse)

# Import source scripts
source("UCP_config.R")


# Function to read in all sheets from an ORR Excel file
read_ORR_excel_sheets <- function(file_path) {
  
  # Check if the file exists
  if (!file.exists(file_path)) {
    stop("The specified file does not exist.")
  }
  
  # Get the names of all sheets in the Excel file
  sheet_names <- excel_sheets(file_path)
  
  # Loop through each sheet and assign it as a variable in the global environment
  for (sheet in sheet_names) {
    assign(sheet, read_excel(file_path, sheet = sheet), envir = .GlobalEnv)
  }
  
  # Return the names of the created data frames
  return(sheet_names)
}



# Define function to read in UCP_data.csv
read_NYT_csv <- function(file_path) {
  # Check if the file exists
  if (!file.exists(file_path)) {
    stop("The specified file does not exist.")
  }
  
  # Read the CSV file
  data <- read_csv(file_path)
  
  # Return the data frame
  return(data)
}

#Define function to calculate and add region data
add_region_column <- function(.data) {
  .data %>%
    # Add region column
    mutate(
      region = case_when(
        country_of_origin %in% central_america_countries ~ "Central America",
        country_of_origin %in% north_america_countries ~ "North America",
        country_of_origin %in% south_america_countries ~ "South America",
        country_of_origin %in% asia_countries ~ "Asia",
        country_of_origin %in% caribbean_countries ~ "Caribbean",
        country_of_origin %in% africa_countries ~ "Africa",
        country_of_origin %in% europe_countries ~ "Europe",
        country_of_origin %in% middle_east_countries ~ "Middle East",
        TRUE ~ "Unclassified"  # Default case for unmatched countries
      )
    ) %>%
    # Add coded region column
    mutate(
      region_N = case_when(
        region == "North America" ~ 1,
        region == "Central America" ~ 2,
        region == "South America" ~ 3,
        region == "Caribbean" ~ 4,
        region == "Africa" ~ 5,
        region == "Europe" ~ 6,
        region == "Middle East" ~ 7,
        region == "Asia" ~ 8,
        TRUE ~ NA_real_ # Handle cases where region is unclassified
      )
    )
}



clean_nyt_data <- function(data) {
  
  # Data cleaning pipeline
  cleaned_data <- data %>%
    # Filter out unknown countries
    filter(country_of_origin != "Unknown") %>%
    
    # Add region-related columns
    add_region_column() %>%
    
    # Mutate to calculate and clean variables
    mutate(
      # Convert dates
      entry_date = mdy(`Child's Date of Entry`),
      release_date = mdy(`Child's Date of Release`),
      # Calculate days detained
      days_detained = as.numeric(release_date - entry_date),
      # Extract year of entry
      entry_year = year(entry_date),
      # Replace missing sponsor categories
      sponsor_category = replace_na(as.numeric(`Sponsor Category`), 4),
      # Clean and convert zip codes
      release_zipcode = as.character(as.integer(as.numeric(release_zipcode)))
    ) %>%
    
    # Filter rows with valid zip codes
    filter(!is.na(release_zipcode)) %>%
    
    # Rename columns for clarity
    rename(
      gender = `Child's Gender`,
      sponsor_relationship = `Relationship of Sponsor`,
      state = State
    ) %>%
    
    # Select relevant columns
    select(
      country_of_origin, region, entry_year, entry_date, release_date,
      days_detained, gender, sponsor_category, sponsor_relationship,
      state, release_zipcode
    )
  
  # Return cleaned data
  return(cleaned_data)
}
