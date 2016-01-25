
mypca <- function() {
  
  Mydir = "~/Desktop/PCA/14shibushi"
  Mydat = "result3.txt"
  
  # set your working directory
  setwd(Mydir)
  
  # load ggbiplot package
  library(ggbiplot)
  
  # load your analysis data
  dat <- read.table(Mydat)
  
  # PCA
  dat.pca <- prcomp(dat[-1], scale. = FALSE)
  
  # plot
  print(ggbiplot(dat.pca, obs.scale = 1,
                 var.scale = 1, groups = dat[,1],
                 ellipse = TRUE, circle = TRUE))
  
  # 主成分負荷量
  dat.pca$loadings <- t(t(dat.pca$rotation)*dat.pca$sdev)
  # 固有値
  dat.pca$eigenvalues <- dat.pca$sdev^2
  # すべての要素を表示する
  print.default(dat.pca)
  
  # output loadings and score(x)
  write.csv(dat.pca$loadings, "~/Desktop/PCA/14shibushi/result/loadings3_2.csv")
  write.csv(dat.pca$x, "~/Desktop/PCA/14shibushi/result/x3_2.csv")
  
  # you can confirm dat.pca object
  return(dat.pca)
}

result <- mypca()