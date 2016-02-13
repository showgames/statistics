library(ggplot2)
ggplot(dat5, aes(x=sex, y=nM)) + geom_bar(stat="identity", fill = "blue") + facet_wrap(~ amino)
