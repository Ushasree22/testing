knn:it can be used for regression but not regrsn classfcn we use
 application:market basket and classfcn we use

before this regularsation(standardisation) to be done for two diffferent magnitudes we will not get large variance

z-score:for standard deviation and mean this z-score method we using

for KNN: library(class) we use
-----------------------------************-------------------------------

library(caret)
library(ISLR)
data("Hitters")
A=data.frame(Hitters)
A
A=na.omit(A)
#here omit function used is to eliminate null values
colnames(A)
str(A)
set.seed(123)
#for repeating 3 times we use 123
sf=sample(2,nrow(A),replace=1,prob = c(0.6,0.4))
trd=A[sf==1,]
tsd=A[sf==2,]
tc=trainControl(method='repeatedcv',number = 10,repeats = 3)
set.seed(123)
model1=train(League~.,data=trd,method='knn',trControl=tc,preProc=c("center","scale"))
PR=predict(model1,newdata=tsd)
confusionMatrix(PR,tsd$League)
------------***********-------------
RESULT:

Confusion Matrix and Statistics

          Reference
Prediction  A  N
         A 49  8
         N  8 39
                                          
               Accuracy : 0.8462          
                 95% CI : (0.7622, 0.9094)