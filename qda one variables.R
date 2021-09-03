############################### 11
library(MASS)
Data=iris
traindata=Data
testdata=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
r1= qda(Species ~  Sepal.Length, data = traindata)
r2= predict(iris_qda, iris_tst)$class
calc_class_err(predicted = r2, actual = testdata$Species)
table(predicted = r2, actual = testdata$Species)
plot(r2$x,ylab="LD1", col=as.integer(testdata$Species), main="Classification Based on X1 ")
############################### 12
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
###################################### 13
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~ Petal.Length, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
######################################### 14
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Petal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)