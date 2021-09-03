#################################### 31 (123)
library(retistruct)
library(MASS)
library(kernlab)
library(MASS)
library(kfda)
Data=iris
train=Data
test=Data
traindata=train[,c(1,2,3,5)]
testdata=test[,c(1,2,3)]
kfda.model <- kfda(trainData = traindata, kernel.name = "rbfdot",kpar.sigma = 0.7)
pre <- kfda.predict(object = kfda.model, testData = testdata)
plot(kfda.model$LDs, col = kfda.model$label, pch = 19, main = "KFDA ON FISHER's IRIS DATA")
points(pre$x, col = pre$class, cex = 2)
abline(h=0,v=0)
legend("topleft", legend = c("trainData","testData"), pch = c(19,1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(19,19,19))
# prediction result
T=table(pre$class, (test[,5]))
plot(pre$x, col = pre$class,pch=as.integer(test$Species), cex = 2,main="KFDA Classification Based on X1, X2 and X3")
abline(h=0,v=0)
#legend("topleft", legend = c("testData"), pch = c(1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(1,2,3))
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
########################################## 32 (124)
library(retistruct)
library(MASS)
library(kernlab)
library(MASS)
library(kfda)
Data=iris
train=Data
test=Data
traindata=train[,c(1,2,4,5)]
testdata=test[,c(1,2,4)]
kfda.model <- kfda(trainData = traindata, kernel.name = "rbfdot",kpar.sigma = 0.7)
pre <- kfda.predict(object = kfda.model, testData = testdata)
plot(kfda.model$LDs, col = kfda.model$label, pch = 19, main = "KFDA ON FISHER's IRIS DATA")
points(pre$x, col = pre$class, cex = 2)
abline(h=0,v=0)
legend("topleft", legend = c("trainData","testData"), pch = c(19,1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(19,19,19))
# prediction result
T=table(pre$class, (test[,5]))
plot(pre$x, col = pre$class,pch=as.integer(test$Species), cex = 2,main="KFDA Classification Based on X1, X2 and X4")
abline(h=0,v=0)
#legend("topleft", legend = c("testData"), pch = c(1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(1,2,3))
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
################################### 33 (134)
library(retistruct)
library(MASS)
library(kernlab)
library(MASS)
library(kfda)
Data=iris
train=Data
test=Data
traindata=train[,c(1,3,4,5)]
testdata=test[,c(1,3,4)]
kfda.model <- kfda(trainData = traindata, kernel.name = "rbfdot",kpar.sigma = 0.7)
pre <- kfda.predict(object = kfda.model, testData = testdata)
plot(kfda.model$LDs, col = kfda.model$label, pch = 19, main = "KFDA ON FISHER's IRIS DATA")
points(pre$x, col = pre$class, cex = 2)
abline(h=0,v=0)
legend("topleft", legend = c("trainData","testData"), pch = c(19,1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(19,19,19))
# prediction result
T=table(pre$class, (test[,5]))
plot(pre$x, col = pre$class,pch=as.integer(test$Species), cex = 2,main="KFDA Classification Based on X1, X3 and X4")
abline(h=0,v=0)
#legend("topleft", legend = c("testData"), pch = c(1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(1,2,3))
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
############################################# 34 (234)
library(retistruct)
library(MASS)
library(kernlab)
library(MASS)
library(kfda)
Data=iris
train=Data
test=Data
traindata=train[,c(2,3,4,5)]
testdata=test[,c(2,3,4)]
kfda.model <- kfda(trainData = traindata, kernel.name = "rbfdot",kpar.sigma = 0.7)
pre <- kfda.predict(object = kfda.model, testData = testdata)
plot(kfda.model$LDs, col = kfda.model$label, pch = 19, main = "KFDA ON FISHER's IRIS DATA")
points(pre$x, col = pre$class, cex = 2)
abline(h=0,v=0)
legend("topleft", legend = c("trainData","testData"), pch = c(19,1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(19,19,19))
# prediction result
T=table(pre$class, (test[,5]))
plot(pre$x, col = pre$class,pch=as.integer(test$Species), cex = 2,main="KFDA Classification Based on X2, X3 and X4")
abline(h=0,v=0)
#legend("topleft", legend = c("testData"), pch = c(1))
legend("bottomleft",legend = c("setosa","versicolor","virginica"),col=c("black","red","green"),pch=c(1,2,3))
misclaserror=1-sum(diag(T))/sum(T)
misclaserror