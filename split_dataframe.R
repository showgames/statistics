# アミノ酸のデータフレームを各グループに分割する
for (i in 4:length(dat3$group)) {
  if (dat3$group[i] == "A") {
    mean3.a <- rbind(mean3.a, dat3[i,])
  } else if (dat3$group[i] == "B") {
    mean3.b <- rbind(mean3.b, dat3[i,])
  } else if (dat3$group[i] == "C") {
    mean3.c <- rbind(mean3.c, dat3[i,])
  }
}
    