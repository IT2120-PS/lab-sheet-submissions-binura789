setwd("C:/Users/IT24103326/Desktop/Excies")
branch_data<-read.csv("Exercise.txt",header = TRUE)
head(branch_data)
boxplot(branch_data$Sales, main = "Box plot for Sales", ylab = "Sales")

summary(branch_data$advertising)

quantile(branch_data$advertising)

IQR(branch_data$advertising)


get.outliers <- function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  ub <- q3 + 1.5 * iqr
  lb <- q1 - 1.5 * iqr
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound", lb))
  outliers <- z[z < lb | z > ub]
  
  if (length(outliers) > 0) {
    print(paste("Outliers:", paste(sort(outliers), collapse = ",")))
  } else {
    print("No outliers found.")
  }
}

get.outliers(branch_data$years)