S <- data.frame(c(1,1), c(2,2), c(3,3))

count = 0
w0 = 0
w1 = 0
learning_rate = 0.1
while(count < 10) {
  # w0 := w0 - alpha * 2/N * Sum(w0 + w1*x - y) 
  # w1 := w1 - alpha * 2/N * Sum(w0 + w1*x - y) * x
  #w0temp <- w0 - 0.1 * 2/3 * sum(w0 + w1*S[1,] - S[2,])
  #w1temp <- w1 - 0.1 * 2/3 * sum((w0 + w1*S[1,] - S[2,])*S[1,]) 
  #print(paste0(w0temp, " = ", w0, " - ", 0.1, " * 2/3 * ", sum(w0 + w1*S[1,] - S[2,])))
  #print(paste0(w1temp, " = ", w1, " - ", 0.1, " * 2/3 * ", sum((w0 + w1*S[1,] - S[2,])*S[1,])))
  #w0 = w0temp
  #w1 = w1temp
  print(paste0("n = ", count + 1))
  for(s in S) {
    w0temp <- w0 - learning_rate * (w0 + w1*s[1] - s[2])
    w1temp <- w1 - learning_rate * (w0 + w1*s[1] - s[2]) * s[1]
    print(paste0("w_0 & = ", w0, " - 0.1 * ", "(",w0, "+",w1,"*",s[1],"-",s[2],") * 1 = ", w0temp, "\\"))
    print(paste0("w_1 & = ", w1, " - 0.1 * ", "(",w0, "+",w1,"*",s[1],"-",s[2],") * ", s[1], " = ", w1temp, "\\"))
    w0 <- w0temp
    w1 <- w1temp
  }
  count=count+1
}
