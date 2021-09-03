########################12
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(1,2)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model,xlab="Sepal.Width",ylab="Sepal.Length", main= "Weighted Density function based on X1 and X2",col.pt=c(2,3,4), drawpoints=TRUE )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(1,2,3))
############################13
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(1,3)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model,xlab="Petal.Length",ylab="Sepal.Length", main= "Weighted Density function based on X1 and X3",col.pt=c(2,3,4), drawpoints=TRUE )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(1,2,3))
############################14
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(1,4)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model,xlab="Petal.Width",ylab="Sepal.Length", main= "Weighted Density function based on X1 and X4",col.pt=c(2,3,4), drawpoints=TRUE )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(1,2,3))
################################23
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(2,3)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model,xlab="Petal.Length",ylab="Sepal.Width", main= "Weighted Density function based on X2 and X3",col.pt=c(2,3,4), drawpoints=TRUE )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(1,2,3))
#####################################24
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(2,4)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model,xlab="Petal.Width",ylab="Sepal.Width", main= "Weighted Density function based on X2 and X4",col.pt=c(2,3,4), drawpoints=TRUE )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(1,2,3))
#######################################34
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(3,4)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model,xlab="Petal.Width",ylab="Petal.Length", main= "Weighted Density function based on X3 and X4",col.pt=c(2,3,4), drawpoints=TRUE )
legend("bottomright",cex = 0.7,legend = c("setosa","versicolor","virginica"),col=c(2,3,4),pch=c(1,2,3))