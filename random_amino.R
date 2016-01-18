# ファイルパス
path1 <- "~/Desktop/aminoacids_analysis1.txt"
path2 <- "~/Desktop/aminoacids_analysis2.txt"

# 平均に近い値のアミノ酸濃度を算出する関数
read.mean <- function(path)
{
  data <- read.table(path, header = T)
  return(data)
}
