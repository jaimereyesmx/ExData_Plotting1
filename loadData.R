#
# This script is responsible for loading and formatting the powCData dataframe so it can be reused by
# the plot<plot number>.R files.
#
# Make sure all the plot<plot number>.R files are able to generate data after modifying this script.
#

# Load dplyr package which is used to transform the raw data before creating exploratory graphs
library(dplyr)

startDate <- "2007-02-01"
endDate <- "2007-02-02"

rawData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

powCData <- rawData %>%
   # Convert "Date" to Date class
   mutate(Date = as.Date(Date, "%d/%m/%Y")) %>%
   
   # Filter to a subset of days within startDate and endDate
   filter(Date >= startDate & Date <= endDate) %>%
   
   # Combine Date and Time into a datetime value (POSIXct class)
   mutate(datetime = as.POSIXct(paste(Date, as.character(Time))))