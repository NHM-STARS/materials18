# This is a tidyr exercise for you to work on
# Run the data creation bits and answer questions below
# ---------------------------------------------
library(tidyverse)



widey <- tribble(
  ~ col, ~ A, ~ B, ~ C,
    "X", 1, 2, 3,
    "Y", 4, 5, 6)

# Question 1
# Convert `widey` to a data frame called long.
# your answer goes below

 # Second dataset
 money <- tribble(
  ~Year, ~Earnings,
  "2018/01", 20000,
  "2018/02", 21000,
  "2018/03", 22356,
  "2018/04", 232311
)

# Q2 Create a new data.frame called money1 that has Year split into year and month.
# your answer goes below

 # Second dataset
 money3 <- tribble(
  ~Year, ~Earnings,
  "2018/01", 20000,
  "2018.02", 21000,
  "2018-03", 22356,
  "2018=04", 232311
)

# Does your answer still work? Can you guess why?
 # your answer goes below


complex_separate <-
  data.frame(
    A = c(
      "enc0",
      "enc10",
      "enc25",
      "enc100",
      "harab0",
      "harab25",
      "harab100",
      "requi0",
      "requi25",
      "requi100"
    ),
    stringsAsFactors = F
  )

# Q5: Separate these into two columns. One called id (containing strings) and another called value containing numbers
# Hint: Use a separator as "(?<=[a-z])(?=[0-9])". See if you can figure out what it means. We'll discuss it.
# your answer goes below (I have left you placeholders)
separate(df, ____, _______)

extract(df, _____, _______)

# The (?<=[a-z])(?=[0-9]) pattern matches a location in the string right in between a lowercase ASCII letter ((?<=[a-z])) 
# and a digit ((?=[0-9])). The (?<=...) is a positive lookahead that requires the presence of some pattern immediately to the
#  left of the current location, and (?=...) is a positive lookahead that requires the presence of its pattern immediately to the 
# right of the current location. Thus, the letters and digits are kept intact when splitting.

# Notes:
# <= in regular exprssions is a positive look behind
# = is a positive look ahead
# See more information here: http://www.rexegg.com/regex-quickstart.html


bmi_cc <- read_csv("data/bmi_cc.csv")
# Q6. Split the first column into country and iso. 
# Remove the Y in the year


