# install.packages('rvest')
# install.packages('tidyverse')
# install.packages('tidyquant')
# install.packages('ggthemes')
library('rvest')
library('dplyr')
library('ggplot2')
library('tidyquant')
library('ggthemes')

# we store our URL in a variable, like we did in Python
url <- 'https://en.wikipedia.org/wiki/Opinion_polling_for_the_Italian_general_election,_2018'

# decompose line by line:
# request to the server, parsing, finding the right element,
# filling blank cells, adding column titles, removing extra bits
2018_table <- url %>%
          read_html() %>%
          html_node(xpath='/html/body/div[3]/div[3]/div[4]/div/table[1]') %>%
          html_table(fill = TRUE) %>%
          setNames(c('date', 'firm', 'sample', 'pd', 'e', 'i', 'cp', 'fi', 'ln', 'fdl', 'ncl', 'm5s', 'leu', 'pap', 'cpi', 'others', 'lead')) %>%
          tail(-2)

# I said no for loops - sorry.
# we just need to convert all of these columns into numbers!
for(i in c(4:17:ncol(2018_table))) {
  2018_table[,i] <- as.numeric(as.character(2018_table[,i]))
}

# line by line...
data_2018 <- 2018_table %>%
  group_by(date) %>%
  mutate(cut_date = paste(tail(strsplit(date, "–")[[1]], n=1), " 2018")) %>%
  mutate(clean_date = as.Date(cut_date, format="%d %b %Y")) %>%
  ungroup() %>%
  select(-date, -firm, -sample, -lead, -cut_date) %>%
  melt(id="clean_date")

ggplot(data = data_2018, aes(clean_date, value, color=variable)) + 
    geom_point() + 
    geom_ma(ma_fun = SMA, n = 3)

one_year <- url %>%
          read_html() %>%
          html_node(xpath='/html/body/div[3]/div[3]/div[4]/div/table[2]') %>%
          html_table(fill = TRUE) %>%
          setNames(c('date', 'firm', 'm5s', 'pd', 'fi', 'ln', 'si', 'fdl', 'ap', 'mdp', 'cp/ap', 'leu', 'i', 'lcp', 'others', 'lead')) %>%
          tail(-2)

for(i in c(3:16:ncol(one_year))) {
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

two_years<- url %>%
          read_html() %>%
          html_node(xpath='/html/body/div[3]/div[3]/div[4]/div/table[3]') %>%
          html_table(fill = TRUE) %>%
          setNames(c('date', 'firm', 'm5s', 'pd', 'fi', 'ln', 'si', 'fdl', 'ap', 'others', 'lead')) %>%
          tail(-2)

for(i in c(3:13:ncol(two_years))) {
  two_years[,i] <- as.numeric(as.character(two_years[,i]))
}
data_2016 <- two_years %>% group_by(date) %>%
  mutate(cut_date = paste(tail(strsplit(date, "–")[[1]], n=1), " 2016")) %>%
  mutate(clean_date = as.Date(cut_date, format="%d %b  %Y")) %>%
  ungroup() %>%
  select(-date, -firm, -lead, -cut_date) %>%
  melt(id="clean_date")

ggplot(data = data_2016, aes(clean_date, value, color=variable)) + 
  geom_point(aes(shape="21",alpha=1/100)) + 
  geom_ma(ma_fun = SMA, n = 10)

#########################
# merge data together now

temporary_merge <- merge(data_2018, data_2017, all=TRUE)
data <- merge(temporary_merge, data_2016, all=TRUE)

ggplot(data, 
       aes(clean_date, value, color=variable)) + 
  geom_point(aes(shape="21", alpha=1/100)) + 
  geom_ma(ma_fun = SMA, n = 8)
