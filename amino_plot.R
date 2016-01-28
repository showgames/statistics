library(ggplot2)
ggplot(dat3, aes(x=time, y=concentration)) + geom_bar(stat="identity", fill = "blue") + facet_wrap(~ amino)
