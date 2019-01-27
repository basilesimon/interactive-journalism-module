library(readr)
df <- read_csv("Downloads/e748ca99dacb2e0e67501d7ad1531665caf891c1/2018-11/2018-11-metropolitan-street.csv")
library("londonShapefiles")
thames <- load_thames()
thames.proj <- spTransform(thames, CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"))
thames.df <- fortify(thames.proj)
boroughs <- load_la()
boroughs.proj <- spTransform(boroughs, CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"))
boroughs.df <- fortify(boroughs.proj)

library(ggplot2)
df %>% 
  ggplot() +
  geom_polygon(boroughs.df, mapping=aes(long, lat, group = group,
                                        color = I("gray99"),
                                        fill = I("gray90"))) +
  geom_polygon(thames.df, mapping=aes(long, lat, group = group,
                                      fill = I("skyblue"),
                                      color = I("skyblue2"))) +
  geom_point(aes(x = Longitude, y = Latitude),
             size = 1/50, color = I("tomato"), alpha = 1/50) +
  coord_map(xlim = c(-0.6,0.4), ylim = c(51.25, 51.75)) +
  theme_minimal() +
  theme(legend.position = "none")


df %>%
  ggplot(mapping=aes(x = as.numeric(Longitude),
                     y = as.numeric(Latitude))) +
  geom_polygon(boroughs.df, mapping=aes(long, lat, group = group,
                                        color = I("gray60"), alpha = 0.1)) +
  geom_bin2d(bins = 1000, aes(alpha=..ncount..)) +
  scale_alpha(range = c(0.3, 1)) +
  coord_map(xlim = c(-0.6,0.4), ylim = c(51.25, 51.75)) +
  theme_minimal()

df %>%
  group_by(Location) %>% 
  mutate(count = n()) %>%
  arrange(desc(count)) %>% select(Location, count) %>% unique() %>% head(18)


police_grid <- c %>%
  unique() %>% 
  group_by(Location, `Crime type`) %>% 
  summarise(n_crimes = n()) %>% arrange(desc(n_crimes))

### faceted heat map of all the crimes per location and month!
ggplot(police_grid,aes(x=`Crime type`,y=Location, fill=n_crimes))+
  #add border white colour of line thickness 0.25
  geom_tile(colour="white",size=0.25)+
  labs(x="",y="")+
  #remove extra space
  #scale_y_discrete(expand=c(0,0))+
  scale_fill_viridis_c(option = "B", name = "Number of crimes") +
  ggtitle("Number of crimes at London Tube stations") +
  coord_fixed() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1))


map_data("world") %>% distinct(region) %>% View()
ggplot() + geom_polygon(thames.df, mapping=aes(long, lat, group = group))
ggplot() +
  geom_polygon(boroughs.df, mapping=aes(long, lat, group = group,
                                        color = I("gray90"))) +
  coord_map(xlim = c(-0.6,0.4), ylim = c(51.25, 51.75)) +
  stat_density2d(df, mapping=aes(x=as.numeric(Longitude), y=as.numeric(Latitude),,color=..density..
                                ,size=ifelse(..density..<=1,0,..density..)
                                ,alpha=..density..)
                 ,geom="tile",contour=F) +
  scale_fill_continuous(low="orange", high="red", guide = "none") +
  scale_size_continuous(range = c(0, 3), guide = "none") +
  scale_alpha(range = c(0,.5), guide="none")

url <- "https://data.police.uk/api/crimes-street/all-crime?lat=51.527317&lng=-0.102433&date=2018-11"
library(httr)
resp <- GET(url)
jsonRespText<-content(resp,as="text") 
jsonRespParsed<-content(resp,as="parsed") 
library(jsonlite)
j <- fromJSON(jsonRespText, flatten = TRUE)

df %>% group_by(location.street.name) %>%
  summarise(count = n()) %>% 
  arrange(desc(count)) %>% head(10) %>%
  ggplot() +
  geom_bar(aes(x = reorder(location.street.name, -count),
               y = count), stat = "identity") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(j) + 
  geom_point(j$location, mapping=aes(x=longitude, y=latitude)) +
  facet_wrap(j$category~.)

url <- "https://data.police.uk/api/crimes-street/all-crime?lat=51.527317&lng=-0.102433&date=2018-10"
library(httr)
resp <- GET(url)
jsonRespText<-content(resp,as="text") 
jsonRespParsed<-content(resp,as="parsed") 
library(jsonlite)
j2 <- fromJSON(jsonRespText)

ggplot(j2) + 
  geom_point(j2$location, mapping=aes(x=longitude, y=latitude)) +
  facet_wrap(j2$category~.)


library(stringr)
library(httr)
library(jsonlite)
library(dplyr)
records <- data.frame()
time <- c("2018-01","2018-02","2018-03",
          "2018-04","2018-05","2018-06",
          "2018-07","2018-08","2018-09",
          "2018-10", "2018-11")
for (month in time) {
  url <- "https://data.police.uk/api/crimes-street/all-crime?lat=51.527317&lng=-0.102433&date="
  resp <- GET(str_c(url, month))
  jsonRespText<-content(resp,as="text") 
  jsonRespParsed<-content(resp,as="parsed") 
  j <- fromJSON(jsonRespText, flatten = TRUE)
  #rownames(j) = make.names(1:3000, unique=TRUE)
  records <- bind_rows(records, j)
}
records %>% group_by(category, month) %>%
  mutate(count = n()) %>%  distinct(month, count, category) %>%
  select(month, count, category) %>% 
  ggplot(aes(x = month,
             y = count, group = 1)) +
  geom_path(, colour="black") + 
  facet_wrap(category~.) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

records %>% group_by(category, month) %>%
  mutate(count = n(),
         change = Delt(count)) %>%
  distinct(month, count, category, change) %>%
  select(month, count, category, change) %>% 
  ggplot(aes(x = month, y = category, fill = change)) +
  geom_tile(colour="white",size=0.25) +
  scale_fill_viridis_c(option = "B", name = "Number of crimes") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

records %>% group_by(category, month) %>%
  summarise(count = n()) %>%
  mutate(change = (count - lag(count))/lag(count) * 100) %>%
  distinct(month, category, change) %>%
  ggplot(aes(x = month, y = category, fill = change)) +
  geom_tile(colour="white",size=0.25) +
  scale_fill_viridis_c(option = "B", name = "Number of crimes") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

