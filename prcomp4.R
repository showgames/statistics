# 入力: prcomp()の戻り値
prcomp4 <- function(dat.pca) {
  # CSV出力先パス(データに応じて変更するべし)
  csv_path <- "~/Desktop/PCA/14shibushi/result3"
  
  # 主成分負荷量
  dat.pca$loadings <- t(t(dat.pca$rotation)*dat.pca$sdev)
  # 固有値
  dat.pca$eigenvalues <- dat.pca$sdev^2
  
  # CSV出力 (いらない場合はコメントアウト)
  # ファイル名を入力するべし
  setwd(csv_path)
  write.csv(dat.pca$loadings, "loading3_var.csv")
  write.csv(dat.pca$x, "x3_var.csv")
}