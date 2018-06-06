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
  filter(!is.na(weight)) %>%
  filter(!is.na(hindfoot_length)) %>%
  summarise(mean_wgt = mean(weight),
            mean_hfl = mean(hindfoot_length))

  # or we could have done all of these at once
surveys %>%
  summarise(num_years = max(year) - min(year),
            start_year = min(year),
            end_year= max(year),
            num_species = n_distinct(species_id),
            min_wgt = min(weight, na.rm=TRUE),
            mean_wgt = mean(weight, na.rm=TRUE),
            max_wgt = max(weight, na.rm=TRUE),
            min_hfl = min(hindfoot_length, na.rm=TRUE),
            mean_hfl = mean(hindfoot_length, na.rm=TRUE),
            max_hfl = max(hindfoot_length, na.rm=TRUE))


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
  filter(taxa=="Rodent") %>%
  ggplot(aes(x=hindfoot_length, y=weight, group=genus)) + 
  geom_point(aes(col=genus), alpha=0.25) + 
  stat_smooth(method=lm, aes(col=genus))

surveys2 %>%
  filter(taxa=="Rodent") %>%
  ggplot(aes(x=weight)) + 
  geom_histogram(aes(fill=genus)) + 
  facet_wrap(~genus)


#------- wrangle the data

# Keep only the rodent species
rats <- surveys2 %>%
  filter(taxa == "Rodent")

# Count the number of species captured at the site in each year
species_richness <- rats %>%
  group_by(year) %>%
  summarise(total=n_distinct(species_id))

# Summarize the number and average weights of each species in each year and plot
summary_by_year_plot <- rats %>%
  group_by(year, plot_id, species_id) %>%
  summarise(count=n(), mean=mean(weight, na.rm=TRUE))

# Keep only complete records (no missing values)
complete_records <- summary_by_year_plot %>%
  filter(!is.na(mean))

# Change the species codes from "PB" to "CB" and "PP" to "CP". 
# Remove records only identified only to genus ("X").
rats2 <- rats %>%
  mutate(species)


#-------- Cleaned Data Visualization
# Which rodent species have been captured most frequently?
ggplot(summary_by_year_plot, aes(year, count, group=species_id)) + 
  geom_line()

# Has the number of species at the site changed through time?
richness_thru_time <- ggplot(species_richness, aes(year, total)) + 
  geom_line()

# Has average weight changed through time?
ggplot(summary_by_year_plot, aes(year, mean, col=species_id)) + 
  geom_point() + 
  geom_line() 

# Are the average weights different for males of females of each species?

# Summarize the average weights of each sex and species
average_MF_mass <- rats %>%
  group_by(sex, species_id) %>%
  summarise(mean_mass=mean(weight, na.rm=TRUE))  

ggplot(average_MF_mass, aes(sex, mean_mass)) + 
  geom_boxplot(aes(col=sex))


#-------- Save out final output for report
ggsave("temporal_change.png", richness_thru_time)
write_csv("year_plot_summary.csv", summary_by_year_plot)
