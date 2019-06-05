library("C50")

setwd("C:/Users/Kamil/Documents/Rstudio/lab4")
dane <- read.csv('lodowki.csv')
dane$Ocena <- factor(dane$Ocena)
head(dane)
treeModel <- C5.0(x=dane[,-6], y=dane$Ocena)
treeModel
summary(treeModel)
plot(treeModel)