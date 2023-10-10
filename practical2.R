# 2. Write program to demonstrate Loops & Vectorization Missing Values.
# Create a numeric vector with missing values
my_vector <- c(1, 2, NA, 4, NA, 6)

# Using a loop to replace missing values with the mean
# Looping approach
mean_value <- mean(my_vector, na.rm = TRUE)
for (i in 1:length(my_vector)) {
  if (is.na(my_vector[i])) {
    my_vector[i] <- mean_value
  }
}

# Print the vector after replacing missing values
cat("Vector after loop-based replacement:", my_vector, "\n")

# Using vectorization to replace missing values with the mean
# Vectorization approach
my_vector <- ifelse(is.na(my_vector), mean(my_vector, na.rm = TRUE), my_vector)

# Print the vector after vectorization-based replacement
cat("Vector after vectorization-based replacement:", my_vector, "\n")
