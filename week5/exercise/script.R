library(readr)
data <- read_csv("~/Github/interactive-journalism-module/week5/exercise/data.csv")

library(ggplot2)

# A basic scatterplot
# Mean income on the x axis, 
# Percentage of having a degree on the y axis
basicChart <- ggplot(data, aes(x = Mean, y = Degrees)) +
  geom_point()
basicChart

# Let's visualise how many people work in each sector
# The data points now take a size parameter
addWeight <- ggplot(data, aes(x = Mean, y = Degrees, size = Number)) +
  geom_point()
addWeight

# The bubbles were a bit small, so let's make them bigger
changeSize <- addWeight +
  scale_size_area(max_size = 15)
changeSize

# Let's add some colours, maybe
# R will create a linear scale of colours... the brighter, the more people work in a sector
changeShape <- ggplot(data, aes(x = Mean, y = Degrees, size = Number, fill=Number)) +
  scale_size_area(max_size = 15) +
  geom_point(shape=21)
changeShape

# Formatting our axis
library(scales)
newAxis <- changeShape +
  scale_x_continuous(breaks = seq(0, 70000, 10000)) +
  scale_y_continuous(labels = scales::percent)
newAxis

# Logarithmic scale
logScale <- newAxis +
  scale_y_continuous(labels = scales::percent, trans=log2_trans())
logScale

# Labelling so we see what we're doing... or not
labels <- ggplot(data, aes(x = Mean, y = Degrees, size = Number, fill=Number, label=Description)) +
  geom_point(shape=21) +
  scale_size_area(max_size = 15) +
  #scale_y_continuous(trans=log2_trans()) +
  geom_text(size = 2)
labels

# Load new batch of annotated data
data_annotated <- read_csv("~/Github/interactive-journalism-module/week5/exercise/data_annotated.csv")
df <- data_annotated

# Color now depends on assigned category
colors <- ggplot(df, aes(x = Mean, y = Degrees, size = Number, fill=Category)) +
  geom_point(shape=21) +
  scale_size_area(max_size = 15) +
  scale_x_continuous(breaks = seq(0, 70000, 10000)) +
  scale_y_continuous(labels = scales::percent)
colors

# Annotate our clusters
label <- colors + 
  annotate("text", x = 40000, y = .55, label = "Privileged gigs") +
  annotate("text", x = 20000, y = .2, label = "Precarious gigs")
label

# More annotations
moreLabels <- colors +
  annotate("text", x = 29000, y = .05, label = "Construction and building") +
  annotate("text", x = 12000, y = .56, label = "Education") +
  annotate("text", x = 49000, y = .75, label = "Health sector") +
  annotate("text", x = 10000, y = .16, label = "Hairdressers") +
  annotate("text", x = 12000, y = .39, label = "Sports and recreation") +
  annotate("text", x = 20000, y = .7, label = "Arts") +
  annotate("text", x = 40000, y = .35, label = "Real estate") +
  annotate("text", x = 14000, y = .07, label = "Taxis") +
  annotate("text", x = 35000, y = .66, label = "IT and programming") +
  annotate("text", x = 50000, y = .62, label = "Consultancies") +
  annotate("text", x = 18000, y = .24, label = "Retail") +
  annotate("text", x = 60000, y = .77, label = "Legal and accounting")
moreLabels

# Playing with some themes
library(ggthemes)
moreLabels + theme_minimal()
moreLabels + theme_tufte()
moreLabels + theme_economist() + scale_colour_economist()
moreLabels + theme_solarized() +
  scale_colour_solarized("blue")

# Facetting
colors + facet_grid(. ~ Category)
