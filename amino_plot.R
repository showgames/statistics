library(ggplot2)
ggplot(dat2, aes(x=group, y=concentration)) + geom_bar(stat="identity", fill = "blue") + facet_wrap(~ amino)
