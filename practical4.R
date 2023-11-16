# Write program for Validating & Exploring Data Manipulations (Summarizing, Sorting, Subsetting, Merging, joining)

# Load necessary libraries
library(dplyr)

# Validate Data
if (!require(mtcars)) {
  install.packages("mtcars", dependencies=TRUE)
}

# Load the mtcars dataset
data(mtcars)

# Display the structure of the dataset
print("Dataset Structure:")
str(mtcars)

# Display the first few rows of the dataset
print("\nFirst few rows of the dataset:")
head(mtcars)

# Summarize Data
summary_stats <- summary(mtcars)
print("\nSummary Statistics:")
print(summary_stats)

# Sort Data by a specific column (e.g., miles per gallon)
sorted_data <- mtcars %>% arrange(mpg)
print("\nSorted Data:")
print(sorted_data)

# Subset Data based on a condition (e.g., cars with mpg > 20)
subset_data <- mtcars %>% filter(mpg > 20)
print("\nSubset of Data:")
print(subset_data)

# Merging and Joining Data
# Create a second dataset for demonstration
set.seed(123)
additional_data <- data.frame(car = rownames(mtcars), 
                              additional_info = sample(1:100, nrow(mtcars)))

# Merge datasets based on the 'car' column
merged_data <- merge(mtcars, additional_data, by = "car")
print("\nMerged Data:")
print(merged_data)

# Inner Join datasets based on the 'car' column
joined_data <- inner_join(mtcars, additional_data, by = "car")
print("\nJoined Data:")
print(joined_data)
