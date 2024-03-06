linReg <- function(x, y, b) {
  
  plot(x, y, col = "blue", pch = 19, xlab = "x", ylab = "y")
  
  y_pred <- b[1] + b[2]*x
 
  lines(x, y_pred, col = "red")
}
x <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
y <- c(1, 3, 2, 5, 7, 8, 8, 9, 10, 12)
