```R
# Improved function to handle empty vectors and NA values
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  # Use mean() which handles NA values by default.  Alternatively you could use na.rm = TRUE to remove NA values.
  mean_x <- mean(x, na.rm = TRUE) 
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
result3 <- calculate_mean(my_vector_3)
print(paste("Mean:", result3))
```