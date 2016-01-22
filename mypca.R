
mypca <- function() {
  
  Mydir = "~/Desktop/PCA/1508shibushi"
  Mydat = "1508amino.txt"
  Mycla = c("8:00", "8:00", "8:00", "13:00", "13:00", "13:00",
            "16:00", "16:00", "16:00", "24:00", "24:00", "24:00",
            "spawn", "spawn", "spawn")
  
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

result <- mypca()