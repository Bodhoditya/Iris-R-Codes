#############################123
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(1,2,3)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model, main= "Weighted Density function based on X1,X2 and X3" )

############################124
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(1,2,4)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model, main= "Weighted Density function based on X1,X2 and X4")

############################134
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(1,3,4)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model, main= "Weighted Density function based on X1,X3 and X4")
################################234
library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(2,3,4)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
plot(kda.model, main= "Weighted Density function based on X2,X3 and X4")
#####################################