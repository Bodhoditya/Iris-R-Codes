library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Length+Sepal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
partimat(Species ~ Sepal.Length + Sepal.Width,data=iris_tst, method="qda",main="QDA Partition plot using X1 and X2 ",col.correct=as.integer(Data$Species),gs =as.integer(Data$Species), imageplot = FALSE,col.contour="darkviolet",print.err = 0,col.wrong = "blue4")
legend("bottomright",cex = 0.7,legend=c("setosa","versicolor","virginica"),col=c(1,2,3),pch=c(1,2,3))
######################################### 22 (13)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Length+ Petal.Length, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
partimat(Species ~ Sepal.Length + Petal.Length,data=iris_tst, method="qda",main="QDA Partition plot using X1 and X3 ",col.correct=as.integer(Data$Species),gs =as.integer(Data$Species), imageplot = FALSE,col.contour="darkviolet",print.err = 0,col.wrong = "blue4")
legend("bottomright",cex = 0.7,legend=c("setosa","versicolor","virginica"),col=c(1,2,3),pch=c(1,2,3))
######################################### 23 (14)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Length+Petal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
partimat(Species ~ Sepal.Length + Petal.Width,data=iris_tst, method="qda",main="QDA Partition plot using X1 and X4 ",col.correct=as.integer(Data$Species),gs =as.integer(Data$Species), imageplot = FALSE,col.contour="darkviolet",print.err = 0,col.wrong = "blue4")
legend("bottomright",cex = 0.7,legend=c("setosa","versicolor","virginica"),col=c(1,2,3),pch=c(1,2,3))
############################################ 24 (23)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~ Sepal.Width+ Petal.Length, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
partimat(Species ~ Sepal.Width+ Petal.Length,data=iris_tst, method="qda",main="QDA Partition plot using X2 and X3 ",col.correct=as.integer(Data$Species),gs =as.integer(Data$Species), imageplot = FALSE,col.contour="darkviolet",print.err = 0,col.wrong = "blue4")
legend("bottomright",cex = 0.7,legend=c("setosa","versicolor","virginica"),col=c(1,2,3),pch=c(1,2,3))
##############################################25 (24)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Width+ Petal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
partimat(Species ~ Sepal.Width+ Petal.Width,data=iris_tst, method="qda",main="QDA Partition plot using X2 and X4 ",col.correct=as.integer(Data$Species),gs =as.integer(Data$Species), imageplot = FALSE,col.contour="darkviolet",print.err = 0,col.wrong = "blue4")
legend("bottomright",cex = 0.7,legend=c("setosa","versicolor","virginica"),col=c(1,2,3),pch=c(1,2,3))
######################################## 26 (34)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Petal.Length+Petal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
partimat(Species ~ Petal.Length+Petal.Width,data=iris_tst, method="qda",main="QDA Partition plot using X3 and X4 ",col.correct=as.integer(Data$Species),gs =as.integer(Data$Species), imageplot = FALSE,col.contour="darkviolet",print.err = 0,col.wrong = "blue4")
legend("bottomright",cex = 0.7,legend=c("setosa","versicolor","virginica"),col=c(1,2,3),pch=c(1,2,3))