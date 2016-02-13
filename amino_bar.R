library(ggplot2)
ggplot(dat, aes(x=sex, y=nM)) + geom_line(aes(group=1)) + facet_wrap(~ amino) + geom_point(size=2, colour = "blue")
