random_math <- function(data) {
  result <- data
  for (i in 3:19) {
    for (j in 1:length(data[, i])) {
      if(result[j, i] > 1000) result[j, i] <- result[j, i] / 10
      if(result[j, i] != 0) result[j, i] <- result[j, i] + runif(1, min = 10, max = 80)
    }
  }
  return(result)
}