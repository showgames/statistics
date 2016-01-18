# 平均に近い値のアミノ酸濃度を算出する関数
read.mean <- function(path)
{
  data <- read.table(path, header = T)
  return(data)
}
