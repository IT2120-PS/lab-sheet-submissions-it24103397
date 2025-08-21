getwd()
setwd("C:\\Users\\it24103397\\Desktop\\IT24103397Lab4")
#1
branch_data <- read.table("Exercise.txt",header=TRUE,sep=",")

#2
str(branch_data)
summary(branch_data)

#3
boxplot(branch_data$Sales_X1,main="Boxplot of sales",horizontal = TRUE)

#4
summary(branch_data$Advertising_X2)
IQR_Advertising <- IQR(branch_data$Advertising_X2)
print(paste("IQR of Advertising:",IQR_Advertising))

#5
get.outliers <- function(x){
  q1 <- quantile(x,0.25)
  q3 <- quantile(x,0.75)
  iqr <- q3 - q1
  lower_bound <- q1 - 1.5 * iqr
  upper_bound<- q3 + 1.5 *iqr
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}
get.outliers(branch_data$Years_X3)