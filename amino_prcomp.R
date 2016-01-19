# 各アミノ酸の定義
amino_acids <- c("His", "Arg", "Asn", "Gln", "Ser", "Asp", "Glu", "Thr", "Pro", "Gly", "Ala", "Val", "Met", "Leu", "Ile",
                 "Cys2", "Phe", "Lys", "Tyr")

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

# 因子負荷量の計算(固有ベクトルと対応した固有値の平方根との積をとる)
sweep.pca <- function(result)
{
  fc.l <- sweep(result$rotation, MARGIN = 2, result$sdev, FUN = "*")
  return(fc.l)
}

# ローディンブプロット(因子負荷量)を出力するプログラム(PC1に関して)
loding.plot.pc1 <- function(fc.l)
{
  plot(fc.l[,1], pch = amino_acids, ylim = c(-1,1), main = "PC1")
}

# ローディンブプロット(因子負荷量)を出力するプログラム(PC2に関して)
loding.plot.pc2 <- function(fc.l)
{
  plot(fc.l[,2], pch = amino_acids, ylim = c(-1,1), main = "PC2")
}