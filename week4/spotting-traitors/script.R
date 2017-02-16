library(dplyr)

# read data from CSVs
# data.csv comes from our scraper
# other one is https://docs.google.com/spreadsheets/d/1wTK5dV2_YjCMsUYlwg0l48uWWf44sKgG8uFVMv5OWlA/edit#gid=893960794
data = read.csv("~/Github/interactive-journalism-module/week4/spotting-traitors/data.csv")
data_vote = read.csv("~/Github/interactive-journalism-module/week4/spotting-traitors/leave_vote_in_westminster_constituencies.csv")

# marker for MPs who voted against triggering Art 50
# this adds a new "vote" column, that we set to "1" for all 122 who voted against
data$vote <- 1

# merge two datasets datasets, using a column in common
# note that we store the result of the merge into a "merge" dataframe
# so as not to destroy the original data
merged_datasets <- merge(data, data_vote, by="Constituency")

# keep only those who voted against triggering Art 50
# note that we store the result of the filter into a "filter" dataframe
# so as not to destroy the original data
# filter <- filter(merged_datasets, vote==1)

# copies our merged dataset and add a new column "traitor"
# its value is either 1 or 0, depending on wether Figure.to.use's value
# if constituency voted leave and MP voted against art 50,
# they're a traitor
traitorsset <- mutate(merged_datasets, traitor = ifelse(
  Figure.to.use >= 0.50, 0, 1
))

# only show traitors
traitors <- filter(traitorsset, traitor==0)

# write CSV
write.csv(traitors, file = "~/Github/interactive-journalism-module/week4/spotting-traitors/traitors.csv",row.names=TRUE)