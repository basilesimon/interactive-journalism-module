# install.packages('rvest')
# install.packages('tidyverse')
# install.packages('tidyquant')
# install.packages('ggthemes')
library('rvest')
library('dplyr')
library('ggplot2')
library('reshape2')
library('tidyquant')
library('ggthemes')

# we store our URL in a variable, like we did in Python
url <- 'https://en.wikipedia.org/wiki/Opinion_polling_for_the_Italian_general_election,_2018'

# decompose line by line:
# request to the server, parsing, finding the right element,
# filling blank cells, adding column titles, removing extra bits
table_2018 <- url %>%
          read_html() %>%
          html_node(xpath='/html/body/div[3]/div[3]/div[4]/div/table[1]') %>%
          html_table(fill = TRUE) %>%
          setNames(c('date', 'firm', 'sample', 'pd', 'e', 'i', 'cp', 'fi', 'ln', 'fdl', 'ncl', 'm5s', 'leu', 'pap', 'cpi', 'others', 'lead')) %>%
          tail(-2)

# I said no for loops - sorry.
# we just need to convert all of these columns into numbers!
for(i in c(4:ncol(table_2018))) {
  table_2018[,i] <- as.numeric(as.character(table_2018[,i]))
}

# line by line...
data_2018 <- table_2018 %>%
  group_by(date) %>%
  mutate(cut_date = paste(tail(strsplit(date, "–")[[1]], n=1), " 2018")) %>%
  mutate(clean_date = as.Date(cut_date, format="%d %b %Y")) %>%
  ungroup() %>%
  select(-date, -firm, -sample, -lead, -cut_date) %>%
  melt(id="clean_date")

ggplot(data = data_2018, aes(clean_date, value, color=variable)) + 
    geom_point() + 
    geom_ma(ma_fun = SMA, n = 3)


## same for 2017 data
one_year <- url %>%
          read_html() %>%
          html_node(xpath='/html/body/div[3]/div[3]/div[4]/div/table[2]') %>%
          html_table(fill = TRUE) %>%
          setNames(c('date', 'firm', 'm5s', 'pd', 'fi', 'ln', 'si', 'fdl', 'ap', 'mdp', 'cp/ap', 'leu', 'i', 'lcp', 'others', 'lead')) %>%
          tail(-2)

for(i in c(3:ncol(one_year))) {
  one_year[,i] <- as.numeric(as.character(one_year[,i]))
}

data_2017 <- one_year %>% group_by(date) %>%
  mutate(cut_date = paste(tail(strsplit(date, "–")[[1]], n=1), " 2017")) %>%
  mutate(clean_date = as.Date(cut_date, format="%d %b  %Y")) %>%
  ungroup() %>%
  select(-date, -firm, -lead, -cut_date) %>%
  melt(id="clean_date")

ggplot(data = data_2017, aes(clean_date, value, color=variable)) + 
  geom_point(aes(shape="21",alpha=1/100)) + 
  geom_ma(ma_fun = SMA, n = 10)

#########################
# merge data together now
data <- merge(data_2018, data_2017, all=TRUE)

# rename
data <- data %>%
  rename(date = clean_date, party = variable) %>%
  group_by(party) %>%
  mutate(mean20_missing = rollapply(value, width = 20,
                                    fill = NA, partial = TRUE, 
                                    FUN=function(x) mean(x, na.rm=TRUE),
                                    align = "right"))
# visualise
ggplot(data, 
       aes(date, color=party)) + 
  geom_point(aes(y=value, shape="21", alpha=1/100)) + 
  geom_line(aes(y=mean20_missing, color=party)) +
  theme_minimal()
