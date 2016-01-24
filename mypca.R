
mypca <- function() {
  
  Mydir = "~/Desktop/PCA/1508shibushi"
  Mydat = "1508amino.txt"
  
  # set your working directory
  setwd(Mydir)
  
  # load ggbiplot package
  library(ggbiplot)
  
  # load your analysis data
  dat <- read.table(Mydat)
  
  # PCA
  dat.pca <- prcomp(dat[-1], scale. = TRUE)
  
  # plot
  print(ggbiplot(dat.pca, obs.scale = 1,
                 var.scale = 1, groups = dat[,1],
                 ellipse = TRUE, circle = TRUE))
  
  # you can confirm dat.pca object
  return(dat.pca)
}

result <- mypca()