#Installing packages
#Loading dataset IRIS

install.packages ('datasets')
data(iris)

iris <- datasets :: iris

View(iris)

#Display summary statistics
#head() and #tail()
head(iris, 4)
tail(iris,4)

#Summary()
summary(iris)
summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$Species)

#to check if there are missing data
sum(is.na(iris))

#use skim() to expand on summary() by providing larger set of statstics
#install and load skim()

install.packages("skimr")
library(skim)

#Perform skim to display summary statistics
skim(iris)

#Group data by species then perform skim()
#Load the dplyr package to group
library(dplyr)
iris %>%
  dplyr :: group_by(Species) %>%
  skim(iris)

