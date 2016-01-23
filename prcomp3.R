# 新しい主成分分析関数
prcomp3 <- function(df)
{
  df <- na.omit(df)                             # 欠損値を持つケースを除く
  ans <- prcomp(df, scale = TRUE)               # 全変数を標準化
  ans$loadings <- t(t(ans$rotation) * ans$sdev) # 主成分負荷量
  ans$eigenvalues <- ans$sdev^2                 # 固有値
  print.default(ans)                            # すべての要素を表示する
  invisible(ans)                                # 結果を非表示で返す
}