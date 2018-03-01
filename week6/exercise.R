# load packages
library(readr)
library(dplyr)
library(ggplot2)
library(reshape2)
library(scales)
library(gridExtra)

############################################
# BELOW IS THE EXAMPLE FROM LAST WEDNESDAY #
############################################

# load 2013 results data
# rename columns and remove unused data points
results <- read_csv('data/2013_results.csv')
results.melt <- melt(results, id="Party")
names(results.melt) <- c("geo", "party", "result_2013")
results.melt$result_2013 <- as.numeric(as.character(results.melt$result_2013))
results.clean <- results.melt

# load net migration data
# pick only 2013 and remove unused data points
df <- read_csv('data/demo_r_gind3_1_Data.csv')
df.clean <- df %>% 
  filter(TIME == "2013") %>%
  select(-TIME, -`Flag and Footnotes`, -INDIC_DE)
names(df.clean) <- c("geo", "net_migration")

# merge the two datasets
df.merge <- merge(results.clean, df.clean, by="geo")

plot_migration <- df.merge %>% 
  group_by(geo, party) %>%
  ggplot(aes(x=net_migration,
             y=result_2013,
             color=party)) +
  geom_point(aes(alpha=0.3)) +
  scale_x_continuous(trans=log2_trans(),
                     breaks=c(0,1000,5000,100000)) +
  geom_smooth(method="lm") +
  facet_grid(. ~ party) +
  ggtitle("Net migration v party vote")

########################
# NOW IT IS YOUR TURN! #
########################
