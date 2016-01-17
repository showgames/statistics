# アミノ酸分析のデータを主成分分析にかける関数
amino.prcomp <- function(path)
{
  data <- read.table(path, header = T)
  result <- prcomp(data, scale = T)
  
  return(result)
}