library(rgdal)
spaces <- readOGR(dsn="data/uk_650_wpc_2017_full_res_v1.8/uk_650_wpc_2017_full_res_v1.8.shp")
plot(spaces)

spaces.proj <- spTransform(spaces, CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"))

library("rgeos")
regions_gSimplify <- gSimplify(spaces.proj, tol = 0.001, topologyPreserve = TRUE)
plot(regions_gSimplify)

library(ggplot2)
spaces.df.proj <- fortify(regions_gSimplify)
ggplot() + geom_polygon(spaces.df.proj, mapping=aes(long, lat, group = group))

library(dplyr)
regions_df <- spaces@data
regions_df$id <- rownames(spaces@data)
regions_gSimplify <- sp::SpatialPolygonsDataFrame(regions_gSimplify, regions_df)
spaces.df.proj <- fortify(regions_gSimplify)
spaces.df.proj.data <- left_join(spaces.df.proj, regions_df, by="id")

ggplot() + geom_polygon(spaces.df.proj.data,
                        mapping=aes(long, lat, group = group,
                                    fill = WINNER))

library(readxl)
bes <- read_excel("data/BES-2017-General-Election-results-file-v1.0.xlsx")
spaces.df.proj.data.2017 <- left_join(spaces.df.proj.data, bes, by = c("ONSID" = "ONSConstID"))

anti_join(spaces.df.proj.data, bes, by = c("ONSID" = "ONSConstID")) %>% View()

theme_opts<-list(theme(panel.grid.minor = element_blank(),
                       panel.grid.major = element_line(colour = "transparent"),
                       panel.background = element_blank(),
                       plot.background = element_blank(),
                       axis.line = element_blank(),
                       axis.text.x = element_blank(),
                       axis.text.y = element_blank(),
                       axis.ticks = element_blank(),
                       axis.title.x = element_blank(),
                       axis.title.y = element_blank(),
                       plot.title = element_blank(),
                       legend.position = "right"))

spaces.df.proj.data.2017 <- spaces.df.proj.data.2017 %>%
  mutate(pop = scales::rescale(as.numeric(POP2015), to = c(0,1)))
ggplot() + geom_polygon(spaces.df.proj.data.2017,
                        mapping=aes(long, lat, group = group,
                                    fill = Winner17, alpha = pop)) +
  scale_fill_manual(values = c("Conservative" = I("#4093B2"),
                               "Labour" = I("#EC5156"),
                               "Green" = I("#61A961"),
                               "Liberal Democrat" = I("#F6C55E"),
                               "Plaid Cymru" = I("#90CD7C"),
                               "Scottish National Party" = I("#FFF685"),
                               "Speaker" = I("blue"),
                               "NA" = I("gray80"))) +
  # facet_wrap(. ~ spaces.df.proj.data.2017$Region.y, scales = "free") +
  coord_map(projection = "mercator") +
  theme_minimal() + theme_opts

