
#Support Vector Machines
library(e1071)
train <- read.csv("train.csv")
test <- read.csv("test.csv")
model_svm <- svm(as.factor(Lung_Cancer)~., data = train, probability = TRUE)
predict <- predict (model_svm, test, probability = TRUE)

#Random Forest
library(randomForest)
train <- read.csv("train_fac.csv")
test <- read.csv("test_fac.csv")
model_rf <- randomForest(Lung_Cancer~ SELECTED FEATURES, data = train, importance = TRUE)
predict <- predict (model_rf, test, type= "prob")

##Data preprocessing and feature selection can be performed by using several add-on packages from CRAN.
https://cran.r-project.org/web/views/MachineLearning.html
