set.seed(123)
(x <- rnorm(14, mean = 5, sd = 2)) # 母平均5, 母標準偏差2の正規乱数14個
mean(x)
sd(x)

# サンプル数を増やして見たとき
y <- rnorm(10000, mean = 5, sd = 2) # 同じ母正規集団から1万個生成
mean(y)
sd(y)
