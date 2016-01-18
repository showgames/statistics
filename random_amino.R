# ファイルパス
path1 <- "~/Desktop/aminoacids_analysis1.txt"
path2 <- "~/Desktop/aminoacids_analysis2.txt"
path3 <- "~/Desktop/aminoacids_analysis3.txt"

# 各アミノ酸の定義
amino_acids <- c("His", "Arg", "Asn", "Gln", "Ser", "Asp", "Glu", "Thr", "Pro", "Gly", "Ala", "Val", "Met", "Leu", "Ile",
           "Cys2", "Phe", "Lys", "Tyr")

# 通し番号
min <- 1   # ファイルによってここを変更する
max <- 11  # ファイルによってここを変更する
first_number <- c(min:max)
second_number <- c(1, 2, 3)  # ここも変更する可能性がある(サンプルの種類によって)


# アミノ酸の平均濃度を読み込む関数
# --------------------------------
# 入力: ファイルパス
# 出力: 読み込みデータ
# --------------------------------
read.mean <- function(path)
{
  data <- read.table(path, header = T)
  return(data)
}

# 1サンプルのデータを作成する関数(19種類のアミノ酸のデータ)
# ---------------------------------------------------------
# 入力: 外部から読み込んだデータ(19種類のアミノ酸の平均濃度のデータ。サンプルの種類は問わない。)
# 出力: 19種類のアミノ酸濃度のデータ
# ---------------------------------------------------------
create.data <- function(data)
{
  vec <- c(1:19)
  
  for (i in 1:length(data))
  {
    vec[i] <- rnorm(1, mean = data[, i], sd = 2.5)
    if (vec[i] < 0) vec[i] <- 0
  }
  
  return(vec)
}

# データをすべて作成する関数(19種類のアミノ酸のデータ * サンプル数)
# 入力: 外部から読み込んだデータすべて
# 出力: csvファイルとして出力
create.all.data <- function(data)
{
  for (i in 1:length(first_number))
  {
    for (j in 1:length(second_number))
    {
      vector <- create.data(data[j,])
      print(vector)
    }
  }
}
  