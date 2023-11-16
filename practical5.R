# Write program to implement the following analysis techniques using R
# • Statistical hypothesis generation and testing
# Generate example data
set.seed(123)
group1 <- rnorm(30, mean = 10, sd = 2)
group2 <- rnorm(30, mean = 12, sd = 2)

# Perform t-test
t_test_result <- t.test(group1, group2)
print("t-Test Results:")
print(t_test_result)


# • Chi-Square test
# Generate example data for categorical variables
observed_data <- matrix(c(30, 10, 15, 25), nrow = 2)
rownames(observed_data) <- c("Group A", "Group B")
colnames(observed_data) <- c("Category 1", "Category 2")

# Perform Chi-Square test
chi_square_result <- chisq.test(observed_data)
print("Chi-Square Test Results:")
print(chi_square_result)

# • Analysis of variance
# Generate example data
set.seed(123)
group1 <- rnorm(30, mean = 10, sd = 2)
group2 <- rnorm(30, mean = 12, sd = 2)
group3 <- rnorm(30, mean = 15, sd = 2)

# Perform ANOVA
anova_result <- aov(c(group1, group2, group3) ~ rep(c("Group 1", "Group 2", "Group 3"), each = 30))
print("ANOVA Results:")
print(anova_result)

# • Correlation analysis
# Generate example data
set.seed(123)
variable1 <- rnorm(50)
variable2 <- variable1 + rnorm(50)

# Perform correlation analysis
correlation_result <- cor.test(variable1, variable2)
print("Correlation Analysis Results:")
print(correlation_result)

# • Regression analysis
# Generate example data
set.seed(123)
x <- rnorm(100)
y <- 2*x + rnorm(100)

# Perform linear regression
regression_model <- lm(y ~ x)
print("Regression Analysis Results:")
print(summary(regression_model))

# • Classification techniques
# Load necessary library
library(randomForest)

# Generate example data
set.seed(123)
data <- data.frame(
  Feature1 = rnorm(100),
  Feature2 = rnorm(100),
  Target = factor(rep(c("Class A", "Class B"), each = 50))
)

# Train a random forest classifier
rf_model <- randomForest(Target ~ ., data = data)
print("Random Forest Classification Results:")
print(rf_model)

# • Clustering
# Generate example data
set.seed(123)
data <- data.frame(
  Feature1 = rnorm(100),
  Feature2 = rnorm(100)
)

# Perform K-Means clustering
kmeans_result <- kmeans(data, centers = 3)
print("K-Means Clustering Results:")
print(kmeans_result)

