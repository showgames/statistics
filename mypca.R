
mypca <- function() {
  
  Mydir = "~/Desktop/PCA"
  Mydat = "a.txt"
  Mycla = c("A", "B", "C")
  
  # set your working directory
  setwd(Mydir)
  
  # load ggbiplot package
  library(ggbiplot)
  
  # load your analysis data
  dat <- read.table(Mydat)
  
  # PCA
  dat.pca <- prcomp(dat, scale. = TRUE)
  
  # plot
  print(ggbiplot(dat.pca, obs.scale = 1,
                 var.scale = 1, groups = Mycla,
                 ellipse = TRUE, circle = TRUE))
  
  # you can confirm dat.pca object
  return(dat.pca)
}