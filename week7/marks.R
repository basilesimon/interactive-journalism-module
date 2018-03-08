# list of marks, randomised
marks <- c(70,60,60,70,70,70,70,60,80,85,75,70,65,70,80,80,75,65,70,60,80)

# build inside a data frame
df <- data.frame(marks)

# draw a violin
ggplot(df, aes(x=1, y=marks)) + geom_violin()


# draw a boxplot
ggplot(df, aes(x=1, y=marks)) + geom_boxplot()
