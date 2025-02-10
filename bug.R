```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  sum_x <- sum(x)
  mean_x <- sum_x / length(x)
  return(mean_x)
}

# Example usage
my_vector <- c(1, 2, 3, 4, 5)
result <- calculate_mean(my_vector)
print(paste("Mean:", result))

my_vector_2 <- numeric(0) #Empty vector
result2 <- calculate_mean(my_vector_2)
print(paste("Mean:", result2))

my_vector_3 <- c(1, 2, 3, 4, NA) #Vector with NA
result3 <- calculate_mean(my_vector_3) #This produces NaN, but we want to handle this differently
print(paste("Mean:", result3))
```