############################### 31 (123)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Length+Sepal.Width+ Petal.Length, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
############################################# 32 (124)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Length+Sepal.Width+Petal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
################################################ 33 (134)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Length+ Petal.Length+Petal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
############################################# 34 (234)
library(retistruct)
library(MASS)
#set.seed(430)
Data=iris
iris_trn=Data
iris_tst=Data
calc_class_err = function(actual, predicted) {
  mean(actual != predicted)
}
iris_qda = qda(Species ~  Sepal.Width+ Petal.Length+Petal.Width, data = iris_trn)
iris_qda
iris_qda_trn_pred = predict(iris_qda, iris_trn)$class
iris_qda_tst_pred = predict(iris_qda, iris_tst)$class
calc_class_err(predicted = iris_qda_trn_pred, actual = iris_trn$Species)
calc_class_err(predicted = iris_qda_tst_pred, actual = iris_tst$Species)
table(predicted = iris_qda_tst_pred, actual = iris_tst$Species)