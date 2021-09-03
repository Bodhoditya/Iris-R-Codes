################### 11
library(MASS)
library(tidyverse)
library(ggplot2)
Data=iris
traindata=Data
testdata=Data
Test=Data[,1]
newdf <- data.frame(Sepal.Length=Test)
r1=lda(Species ~ Sepal.Length,data=traindata)
r2=predict(object=r1,newdf)
Z=rep(1:150)
T=table(testdata[,5],r2$class)
T
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
datPred<-data.frame(Species=r2$class,Z,r2$x)
r3 <- lda(datPred[,2:3], datPred[,1])
x <- seq(min(datPred[,2]), max(datPred[,2]), length.out=150)
y <- seq(min(datPred[,3]), max(datPred[,3]), length.out=150)
Xcon <- matrix(c(rep(x,length(y)),
                 rep(y, rep(length(x), length(y)))),,2)
r3.pr1 <- predict(r3, Xcon)$post[, c("setosa","versicolor")] %*% c(1,1) 
r3.pr2 <- predict(r3, Xcon)$post[, c("virginica","setosa")] %*% c(1,1)
pr3<-data.frame(x=rep(x, length(y)), y=rep(y, each=length(x)), 
               z1=as.vector(r3.pr1), z2=as.vector(r3.pr2))
ggplot(datPred, aes(x=Z, y=LD1) ) + 
  geom_point(size = 2, aes(pch = Species,  col=Species)) +
  geom_contour(data=pr3, aes(x=x, y=y, z=z1), breaks=c(0,.5)) + 
  geom_contour(data=pr3, aes(x=x, y=y, z=z2), breaks=c(0,.5))+
    labs(title="Classification Based on X1")
################################# 12
library(MASS)
library(tidyverse)
library(ggplot2)
Data=iris
traindata=Data
testdata=Data
Test=Data[,2]
newdf <- data.frame(Sepal.Width=Test)
r1=lda(Species ~ Sepal.Width,data=traindata)
r2=predict(object=r1,newdf)
Z=rep(1:150)
T=table(testdata[,5],r2$class)
T
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
datPred<-data.frame(Species=r2$class,Z,r2$x)
r3 <- lda(datPred[,2:3], datPred[,1])
x <- seq(min(datPred[,2]), max(datPred[,2]), length.out=150)
y <- seq(min(datPred[,3]), max(datPred[,3]), length.out=150)
Xcon <- matrix(c(rep(x,length(y)),
                 rep(y, rep(length(x), length(y)))),,2)
r3.pr1 <- predict(r3, Xcon)$post[, c("setosa","versicolor")] %*% c(1,1) 
r3.pr2 <- predict(r3, Xcon)$post[, c("virginica","setosa")] %*% c(1,1)
pr3<-data.frame(x=rep(x, length(y)), y=rep(y, each=length(x)), 
                z1=as.vector(r3.pr1), z2=as.vector(r3.pr2))
ggplot(datPred, aes(x=Z, y=LD1) ) + 
  geom_point(size = 2, aes(pch = Species,  col=Species)) +
  geom_contour(data=pr3, aes(x=x, y=y, z=z1), breaks=c(0,.5)) + 
  geom_contour(data=pr3, aes(x=x, y=y, z=z2), breaks=c(0,.5))+
  labs(title="Classification Based on X2")
##########################13
library(MASS)
library(tidyverse)
library(ggplot2)
Data=iris
traindata=Data
testdata=Data
Test=Data[,3]
newdf <- data.frame(Petal.Length=Test)
r1=lda(Species ~ Petal.Length,data=traindata)
r2=predict(object=r1,newdf)
Z=rep(1:150)
T=table(testdata[,5],r2$class)
T
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
datPred<-data.frame(Species=r2$class,Z,r2$x)
r3 <- lda(datPred[,2:3], datPred[,1])
x <- seq(min(datPred[,2]), max(datPred[,2]), length.out=150)
y <- seq(min(datPred[,3]), max(datPred[,3]), length.out=150)
Xcon <- matrix(c(rep(x,length(y)),
                 rep(y, rep(length(x), length(y)))),,2)
r3.pr1 <- predict(r3, Xcon)$post[, c("setosa","versicolor")] %*% c(1,1) 
r3.pr2 <- predict(r3, Xcon)$post[, c("virginica","setosa")] %*% c(1,1)
pr3<-data.frame(x=rep(x, length(y)), y=rep(y, each=length(x)), 
                z1=as.vector(r3.pr1), z2=as.vector(r3.pr2))
ggplot(datPred, aes(x=Z, y=LD1) ) + 
  geom_point(size = 2, aes(pch = Species,  col=Species)) +
  geom_contour(data=pr3, aes(x=x, y=y, z=z1), breaks=c(0,.5)) + 
  geom_contour(data=pr3, aes(x=x, y=y, z=z2), breaks=c(0,.5))+
  labs(title="Classification Based on X3")
###################################14
library(MASS)
library(tidyverse)
library(ggplot2)
Data=iris
traindata=Data
testdata=Data
Test=Data[,4]
newdf <- data.frame(Petal.Width=Test)
r1=lda(Species ~ Petal.Width,data=traindata)
r2=predict(object=r1,newdf)
Z=rep(1:150)
T=table(testdata[,5],r2$class)
T
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
datPred<-data.frame(Species=r2$class,Z,r2$x)
r3 <- lda(datPred[,2:3], datPred[,1])
x <- seq(min(datPred[,2]), max(datPred[,2]), length.out=150)
y <- seq(min(datPred[,3]), max(datPred[,3]), length.out=150)
Xcon <- matrix(c(rep(x,length(y)),
                 rep(y, rep(length(x), length(y)))),,2)
r3.pr1 <- predict(r3, Xcon)$post[, c("setosa","versicolor")] %*% c(1,1) 
r3.pr2 <- predict(r3, Xcon)$post[, c("virginica","setosa")] %*% c(1,1)
pr3<-data.frame(x=rep(x, length(y)), y=rep(y, each=length(x)), 
                z1=as.vector(r3.pr1), z2=as.vector(r3.pr2))
ggplot(datPred, aes(x=Z, y=LD1) ) + 
  geom_point(size = 2, aes(pch = Species,  col=Species)) +
  geom_contour(data=pr3, aes(x=x, y=y, z=z1), breaks=c(0,.5)) + 
  geom_contour(data=pr3, aes(x=x, y=y, z=z2), breaks=c(0,.5))+
  labs(title="Classification Based on X4")