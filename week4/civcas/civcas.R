# install.packages('dplyr')
# install.packages('readr')
library(readr)
library(dplyr)

# set your working directory here!!
df <- read_csv('civcas.csv')

# quick overview
# try adding 'location' to your group
df %>%
  group_by(country) %>%
  summarise(count = sum(deads)) %>%
  arrange(desc(count))

# only Mosul
df %>%
  group_by(country, location) %>%
  filter(grepl("Mosul", location))%>%
  summarise(count = sum(deads)) %>%
  arrange(desc(count))

# data overview, similar to summary()
# how many total events in Iraq, and in Syria?
# average civcas per event in Iraq and in Syria?
df %>%
  group_by(country) %>%
  summarise(min = min(deads),
            max = max(deads),
            total = sum(deads))


