# Dates and Times made easy in R!
# Here is a brief recap

library(lubridate)
today()
now()

# hint. To see all functions in lubridate (or any package), run
# ls(pos= "package:lubridate")

# Format dates from strings

ymd("2017-01-31") 
#> [1] "2017-01-31"
mdy("January 31st, 2017")
#> [1] "2017-01-31"
dmy("31-Jan-2017")
#> [1] "2017-01-31"

# --------------------------------------
# Q1
# Load the flights dataset, 
# Create a new variable called departure that formats date and time from:year,
# month, day, hour, minute using make_datetime

# Q2
# Use the appropriate lubridate function to parse each of the following dates:
#   
# d1 <- "January 1, 2010"
# d2 <- "2015-Mar-07"
# d3 <- "06-Jun-2017"
# d4 <- c("August 19 (2015)", "July 1 (2015)")
# d5 <- "12/30/14" # Dec 30, 2014


