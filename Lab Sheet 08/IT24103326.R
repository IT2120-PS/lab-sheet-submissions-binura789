# Setting the working directory to the location of your files.
setwd("C:\\Users\\IT24103326\\Desktop\\lab_08")

# Load the data
[cite_start]data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE) [cite: 104]
attach(data)
pop_mean <- mean(data$Weight(kg))
pop_sd <- sd(data$Weight(kg))

# Calculate the population mean
pop_mean <- mean(data$Weight(kg))

# Calculate the population standard deviation 
pop_sd <- sd(data$Weight(kg))

# Exercise Question 2

# Create empty vectors to store the calculated 
sample_means <- c()
sample_sds <- c()

for (i in 1:25) {
  current_sample <- sample(data$Weight(kg), 6, replace = TRUE)
  
  # Calculate the mean and standard deviation for the current sample.
  sample_means[i] <- mean(current_sample)
  sample_sds[i] <- sd(current_sample)
}
# The results are stored in the 'sample_means' and 'sample_sds' vectors.

# Exercise Question 3
# Calculate the mean of the 25 sample means.
mean_of_sample_means <- mean(sample_means)

# Calculate the standard deviation of the 25 sample means.
sd_of_sample_means <- sd(sample_means)


# Relationship 1: Mean of Sample Means vs. Population Mean
relationship1 <- "The mean of the sample means is expected to approximate the population mean."

# Relationship 2: Standard Deviation of Sample Means vs. Population Standard Deviation
theoretical_se <- pop_sd / sqrt(6)
relationship2 <- paste("The standard deviation of the sample means (standard error) is approximately equal to the population standard deviation divided by the square root of the sample size (6). Calculated theoretical standard error is:", theoretical_se)

print(paste("Population Mean:", pop_mean))
print(paste("Population Standard Deviation:", pop_sd))
print("-----------------------------------")
print(paste("Mean of the Sample Means:", mean_of_sample_means))
print(paste("Standard Deviation of the Sample Means:", sd_of_sample_means))
print("-----------------------------------")
print(relationship1)
print(relationship2)