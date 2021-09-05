#Multivariate Normality Test of Iris Setosa
library(MASS)
library(mvnormtest)
Data=iris
setosa=Data[1:50,1:4]
Test=setosa[,c(1,2,3,4)]
S=t(Test)
mshapiro.test(S)


#Multivariate Normality Test of Iris Versicolor
library(MASS)
library(mvnormtest)
Data=iris
Versicolor=Data[51:100,1:4]
Test=Versicolor[,c(1,2,3,4)]
Ver=t(Test)
mshapiro.test(Ver)

##Multivariate Normality Test of Iris Virginica
library(MASS)
library(mvnormtest)
Data=iris
Virginica=Data[101:150,1:4]
Test=Virginica[,c(1,2,3,4)]
Vir=t(Test)
mshapiro.test(Vir)

##Multivariate Normality Test of Iris Dataset
library(MASS)
library(mvnormtest)
Data=iris
Ir=Data[,1:4]
Test=Ir[,c(1,2,3,4)]
Iris=t(Test)
mshapiro.test(Iris)