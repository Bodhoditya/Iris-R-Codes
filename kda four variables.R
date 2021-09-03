library("ks")
library("MASS")
library(ggplot2)
data("iris")
ir <- iris[,c(1,2,3,4)]
ir.group <- iris[,5]
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
kda.model=kda(x = ir, x.group = ir.group, Hs = Hscv1)
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")