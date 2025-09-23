setwd("C:\\Users\\IT24100192\\Desktop\\IT24100192")

#Q1
#What is the distribution of X?
#Binomial Distribution
#Here, random variable x has binomial distribution with n=50 and p=0.85

#What is the probability that at least 47 students passed the test?
pbinom(47,50,0.85,lower.tail = FALSE)

#Q2
#What is the random variable (X) for the problem?
#Number of customer calls received by the call center in a given hour.

#What is the distribution of X?
#Poisson Distribution

#What is the probability that exactly 15 calls are received in an hour?
dpois(15,12)
