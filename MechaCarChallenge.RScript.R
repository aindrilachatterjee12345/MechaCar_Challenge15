# install libraries required

install.packages("tidyverse")
library(tidyverse)

install.packages("jsonlite")
library (jsonlite)

myfile = read.csv("C:/folder/folder/Desktop/file.csv")install.packages("pastecs")
library(pastecs)

# load data (check.names = T to fix naming in mpg set)
mpgs <- read.csv(file='MechaCar_mpg.csv', check.names=T, stringsAsFactors = F)
suspension <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)


# multiple regression on MPG dataset, independent variable of mpg based on other variables
reg <- lm( mpg~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mpgs)

# print coefficients and summary
summary(reg)

# summary of Suspension Coil dataset
summary(suspension$PSI)

# One-sample t-test
t.test(suspension$PSI, mu=1500)install.packages("pastecs")
library(pastecs)

read.csv(file.choose())
write.csv(x = df, file = "MechaCar_mpg")

model = lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=mecha_cars) #generate multiple linear regression model
summary(model)

suspension = read.csv('Suspension_Coil.csv')
res <- stat.desc(suspension)
res$PSI = round(res$PSI, 2)
t.test(suspension$PSI,mu=1500)