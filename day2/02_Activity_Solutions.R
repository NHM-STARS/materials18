# Practice with Portal Project Dataset
# using dplyr and ggplot

# Sarah Supp
# Day 2

#-------- load libraries
library(tidyverse)

#-------- load data
species <- read_csv("example_data/species.csv")
surveys <- read_csv("example_data/surveys.csv")


#-------- explore data

# 1. How many species are represented?
glimpse(species)
length(unique(surveys$species_id))
  # There are 54 species in the surveys table, 
  # but only 49 unique species codes in the surveys table

# 2. What years was the site surveyed?
range(surveys$year)
length(unique(surveys$year))

# 3. What is the range of weights? hindfoot lengths?
range(surveys$weight, na.rm=TRUE)
range(surveys$hindfoot_length, na.rm=TRUE)


# 4. What is the average weight? hindfoot length?
mean(surveys$weight, na.rm=TRUE)
mean(surveys$hindfoot_length, na.rm=TRUE)

  # or you could find the mean using summarise and na.rm=TRUE
surveys %>%
  summarise(mean_wgt = mean(weight, na.rm=TRUE), 
            mean_hfl = mean(hindfoot_length, na.rm=TRUE))
  
  # or you could find the mean using filter and summarise
surveys %>%
  dplyr::filter(!is.na(weight)) %>%
  dplyr::filter(!is.na(hindfoot_length)) %>%
  summarise(mean_wgt = mean(weight),
            mean_hfl = mean(hindfoot_length))


# ----------- Visualize the data

# 4. Is weight correlated with hindfoot length?

ggplot(surveys, aes(hindfoot_length, weight, group=species_id)) + 
  geom_point(alpha=0.25) + 
  stat_smooth(method=lm, aes(col=species_id))

# 5. Look at a distribution of the weights by each species separately.
ggplot(surveys, aes(weight)) + 
  geom_histogram() + 
  facet_wrap(~species_id)

# ------- merge the datasets
surveys2 <- merge(surveys, species, all.x=T)

# ------- Now try plotting again

surveys2 %>%
  dplyr::filter(taxa=="Rodent") %>%
  ggplot(aes(x=hindfoot_length, y=weight, group=genus)) + 
  geom_point(aes(col=genus), alpha=0.25) + 
  stat_smooth(method=lm, aes(col=genus))

surveys2 %>%
  dplyr::filter(taxa=="Rodent") %>%
  ggplot(aes(x=weight)) + 
  geom_histogram(aes(fill=genus)) + 
  facet_wrap(~genus)


# ------ wrangle the data

