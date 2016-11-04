# 読み込むCSVファイルが存在するディレクトリを指定する
Mydir = "~/Desktop/"

# 読み込むCSVファイル名を指定する
Mydat = "query_result.csv"

# 出力したいCSVファイル名を指定する
resultDat = "query_result_total.csv"




setwd(Mydir)

data <- read.csv(Mydat)

# とりあえず先にデータフレームのひな形を作っておく (データ欠損対策で0を先にうめておく)
day <- unique(data$day)
start <- rep(0, length(day))
finish <- rep(0, length(day))
delete <- rep(0, length(day))

for (i in 1:length(day))
{
  for (j in 1:length(data$action))
  {
    if (data$action[j] == "START" && data$day[j] == day[i])
    {
      start[i] = data$count[j]
    }
    
    if (data$action[j] == "FINISH" && data$day[j] == day[i])
    {
      finish[i] = data$count[j]
    }
    
    if (data$action[j] == "DELETE" && data$day[j] == day[i])
    {
      delete[i] = data$count[j]
    }
  }
}

x <- data.frame(DAY = day, START = start, FINISH = finish, DELETE = delete)
write.csv(x, resultDat, row.names = F)
