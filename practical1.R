# 1. Write program for Creating and Manipulating R Objects in R – Vectors, Matrices, Arrays, Data Frames and Lists.
# Creating a numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Creating a character vector
character_vector <- c("apple", "banana", "cherry")

# Accessing elements of a vector
print(numeric_vector[3])  # Access the 3rd element of numeric_vector

# Creating a matrix
matrix_data <- matrix(1:9, nrow = 3, ncol = 3)

# Accessing elements of a matrix
print(matrix_data[2, 3])  # Access the element at row 2, column 3

# Creating a 3D array
array_data <- array(1:24, dim = c(2, 3, 4))

# Accessing elements of an array
print(array_data[1, 2, 3])  # Access the element at 1st dimension 1, 2nd dimension 2, 3rd dimension 3


# Creating a data frame
data_frame <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Score = c(95, 89, 75)
)

# Accessing columns in a data frame
print(data_frame$Age)  # Access the Age column

# Creating a list
my_list <- list(
  Name = "John",
  Age = 28,
  Scores = c(85, 90, 78)
)

# Accessing elements in a list
print(my_list$Name)  # Access the "Name" element

