library(MASS)
library(tidyverse)
library(ggplot2)
Data=iris
traindata=Data
testdata=Data
Test=testdata[,c(1,2,3,4)]
newdf <- data.frame(Sepal.Length=Test[,1],Sepal.Width=Test[,2],Petal.Length=Test[,3],Petal.Width=Test[,4])
r1=lda(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width ,data=traindata)
r2=predict(object=r1,newdf)
T=table(testdata[,5],r2$class)
T
misclaserror=1-sum(diag(T))/sum(T)
misclaserror
datPred<-data.frame(Species=testdata$Species,r2$x) #create data.frame
r3 <- lda(datPred[,2:3], datPred[,1])
x <- seq(min(datPred[,2]), max(datPred[,2]), length.out=150)
y <- seq(min(datPred[,3]), max(datPred[,3]), length.out=150)
Xcon <- matrix(c(rep(x,length(y)),
                 rep(y, rep(length(x), length(y)))),,2)
r3.pr1 <- predict(r3, Xcon)$post[, c("setosa","versicolor")] %*% c(1,1) 
r3.pr2 <- predict(r3, Xcon)$post[, c("virginica","setosa")] %*% c(1,1)
pr3<-data.frame(x=rep(x, length(y)), y=rep(y, each=length(x)), 
                z1=as.vector(r3.pr1), z2=as.vector(r3.pr2))
ggplot(datPred, aes(x=LD1, y=LD2) ) + 
  geom_point(size = 2, aes(pch = Species,  col=Species)) +
  geom_contour(data=pr3, aes(x=x, y=y, z=z1), breaks=c(0,.5)) + 
  geom_contour(data=pr3, aes(x=x, y=y, z=z2), breaks=c(0,.5))+
  labs(title="Classification Based on X1, X2,X3 and X4")