random_math <- function(data) {
  result <- data
  # first phase
  for (i in 3:21) {
    for (j in 1:length(result[, i])) {
      if(result[j, i] > 1000) {
         result[j, i] <- result[j, i] / 10
      } else if(result[j, i] > 200){
         result[j, i] <- result[j, i] / 10
      }
      if(result[j, i] != 0) result[j, i] <- result[j, i] + runif(1, min = 10, max = 80)
      if(result[j, i] < 1) result[j, i] <- 0
    }
  }
  
  # second phase
  for (h in 1:500) {
    m <- round(runif(1, min = 3, max = 21))
    n <- round(runif(1, min = 1, max = length(result[,m])))
    result[n, m] <- result[n, m] / 10
    if(result[n, m] < 1) result[n, m] <- 0
  }
  
  result[3:21] <- round(result[3:21], 2)
  return(result)
}