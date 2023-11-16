# 3. Demonstrate Importing and exporting data.
getwd()
data = read.csv("data.csv")
print(data)

print(is.data.frame(data))

print(ncol(data))
print(nrow(data))

data$Name

data$Age

data$Percentage[2]


retval <- subset(data, as.Date(Age) > as.Date(21))

write.csv(retval,"output.csv")

newdata <- read.csv("output.csv")

print(newdata)


