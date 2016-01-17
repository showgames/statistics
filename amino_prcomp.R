# アミノ酸分析のデータを主成分分析にかける関数
amino.prcomp <- function(path)
{
  data <- read.table(path, header = T)
  result <- prcomp(data, scale = T)
  
  return(result)
}

# 主成分分析の結果の概要を表示する関数
# - 標準偏差
# - 寄与率
# - 累積寄与率
print.result1 <- function(result)
{
  print(summary(result))
}

# 主成分分析の結果の詳細を表示する関数
# - 固有ベクトル
# - 主成分得点
print.result2 <- function(result)
{
  print(round(result$rotation, 3)) # 固有ベクトル(主成分軸の係数)
  print(round(result$x, 3))        # 主成分得点
}

