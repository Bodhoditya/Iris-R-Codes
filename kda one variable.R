###################### 11
library(retistruct)
library(MASS)
library(ks)
Data=iris
traindata=Data
testdata=Data
kda.model <- kda(traindata[,c(1)],traindata[,5])
pre <- predict(kda.model,x=testdata[,c(1)])
E=compare(testdata[,5], pre)
print(E$error)
plot(kda.model, xlab="Sepal length", main= "Weighted Density function based on X1" )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(19,19,19))
######################## 12
library(retistruct)
library(MASS)
library(ks)
Data=iris
traindata=Data
testdata=Data
kda.model <- kda(traindata[,c(2)],traindata[,5])
pre <- predict(kda.model,x=testdata[,c(2)])
E=compare(testdata[,5], pre)
print(E$error)
plot(kda.model, xlab="Sepal.Width", main= "Weighted Density function based on X2" )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(19,19,19))
############################ 13
library(retistruct)
library(MASS)
library(ks)
Data=iris
traindata=Data
testdata=Data
kda.model <- kda(traindata[,c(3)],traindata[,5])
pre <- predict(kda.model,x=testdata[,c(3)])
E=compare(testdata[,5], pre)
print(E$error)
plot(kda.model, xlab="Petal Length", main= "Weighted Density function based on X3" )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(19,19,19))
############################ 14
library(retistruct)
library(MASS)
library(ks)
Data=iris
traindata=Data
testdata=Data
kda.model <- kda(traindata[,c(4)],traindata[,5])
pre <- predict(kda.model,x=testdata[,c(4)])
E=compare(testdata[,5], pre)
print(E$error)
plot(kda.model, xlab="Petal Width", main= "Weighted Density function based on X4" )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(19,19,19))