setwd("C:\\Users\\it24103285\\Desktop\\IT24103285")

#Question (i)
H0 <- "Customers choose the four snack types with equal probability"
H1 <- "Customer do not choose the four snack types with equal probability"

#Question (ii)
snack_types <- c("A", "B", "C", "D")
observed_counts <- c(120, 95, 85, 100)
chi_test <- chisq.test(observed_counts)
chi_test

#Question (iii)
#There is no significant evidence that customers choose the four snack types with different probabilities.
#The data supports the vending machine owner's claim that customers choose snacks equally.


