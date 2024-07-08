#clean previous
rm(list=ls()) 

#create the dataframe
years_experienced <- c(1.1, 1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7)
salary <- c(39343.00, 46205.00, 37731.00, 43525.00, 39891.00, 56642.00, 60150.00, 54445.00, 64445.00, 57189.00)
trainingset <- data.frame(x = years_experienced, y = salary)

#describe dataset
library(Hmisc)
describe(trainingset)

#install the library and fit simple linear regression to the training set
install.packages('caTools')
library(caTools)
lm.r = lm(formula = y ~ x, data = trainingset)

#provide the summary of the linear model
summary(lm.r)