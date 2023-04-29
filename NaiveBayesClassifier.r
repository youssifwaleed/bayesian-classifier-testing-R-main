install.packages("e1071")
install.packages("caTools")
install.packages("caret")
install.packages("arules")
install.packages("arulesViz")
install.packages("RColorBrewer")

library(e1071)
library(caTools)
library(caret)
library(arules)
library(arulesViz)
library(RColorBrewer)

db <- read.table("nbtrain.csv",header = TRUE,sep = ",")
print(db)

# Splitting data into train and test data
train_cl <- data.frame(db[1:9011,])
test_cl <- data.frame(db[9012:10010,])
#Display Train Dataframes
train_cl

# Creating Model where 'Income' as Response Column
# Fitting Naive Bayes Model to training dataset
classifier_cl <- naiveBayes(income~ ., data = train_cl,laplace = 0.01)
classifier_cl

# Predicting on test data'
y_pred <- predict(classifier_cl, newdata = test_cl) 
# Confusion Matrix
cm <- table(test_cl$income, y_pred)
cm

# Model Evauation
confusionMatrix(cm)

# Creating Model where 'Gender' as Response Column
# Fitting Naive Bayes Model to training dataset
classifier_c2 <- naiveBayes(gender~ ., data = train_cl,laplace = 0.01)
classifier_c2

# Predicting on test data'
y_pred <- predict(classifier_c2, newdata = test_cl) 
# Confusion Matrix
cm <- table(test_cl$gender, y_pred)
cm

# Model Evauation
confusionMatrix(cm)


