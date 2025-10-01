setwd("C:\\Users\\Windows\\Desktop\\IT24103264-Lab09")
#Question1
#Part1
y<-rnorm(25,mean = 45, sd = 2)
#Part2
t.test(y, mu = 46, alternative = "less")