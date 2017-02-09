library(dplyr)

# read data from CSVs
# data.csv comes from our scraper
# other one is https://docs.google.com/spreadsheets/d/1wTK5dV2_YjCMsUYlwg0l48uWWf44sKgG8uFVMv5OWlA/edit#gid=893960794
data = read.csv("/Users/bsimon/Github/scraping-traitors/data.csv")
data_vote = read.csv("/Users/bsimon/Github/scraping-traitors/leave_vote_in_westminster_constituencies.csv")

# marker for MPs who voted against triggering Art 50
data$vote <- 1

# merge two datasets datasets, using a column in common
merge <- merge(data, data_vote, by="Constituency")

# keep only those who voted against triggering Art 50
filter <- filter(merge, vote==1)

# if constituency voted leave and MP voted against art 50,
# they're a traitor
traitorsset <- mutate(merge, traitor = ifelse(
  Figure.to.use >= 0.50, 0, 1
))

# only show traitors
traitors <- filter(traitorsset, traitor==0)

# write CSV
write.csv(traitors, file = "traitors.csv",row.names=TRUE)