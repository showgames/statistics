# ファイルパス
path1 <- "~/Desktop/aminoacids_analysis1.txt"
path2 <- "~/Desktop/aminoacids_analysis2.txt"
path3 <- "~/Desktop/aminoacids_analysis3.txt"

# アミノ酸濃度の平均を読み込む関数
# ------------------------
# 入力: ファイルパス
# 出力: 読み込みデータ
# ------------------------
read.mean <- function(path)
{
  data <- read.table(path, header = T)
  return(data)
}

# 平均に近いアミノ酸濃度を指定された個数分だけ生成する関数
# -------------------------------------------------
# 入力1: ある種類のアミノ酸濃度の平均(1種類のみ)
# 入力2: 生成する個数
# 出力:  入力2で指定された長さのベクトル
# -------------------------------------------------
create.vector <- function(average, num)
{
  vector <- rnorm(num, mean = average, sd = 4)
  
  for (i in 1:length(vector))
  {
    if (vector[i] < 0)
    {
      vector[i] <- 0
    }
  }
  return(vector)
}

# テスト1
rep1 <- function(x, average, num)
{
  for (i in 1:x)
  {
    print(rnorm(num, mean = average, sd = 4))
  }
}

# テスト2
rep2 <- function(x, average, num)
{
  for (i in 1:x)
  {
    print(create.vector(average, num))
  }
}

