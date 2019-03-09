install.packages("e1071")
install.packages("naivebayes")
library(e1071)
library(naivebayes)
A=read.csv(file.choose())
#A file is train data downlaod from comp file
#B is test data download from comp.B file
B=read.csv(file.choose())
#training is A and testing is B here....we cant give train data >1gb here due to big data pblm....so spark frame work easy to train data so that accuracy is better 
NB = naiveBayes(buy~.,data=A)
model1 = naive_bayes(buy ~ .,data = A)
pred_class = predict(NB,newdata=B,type="class")
pred_raw = predict(NB,newdata=B,type="raw")
Y=data.frame(age="Youth",income="medium",student="no",credit.rating='excellent')
Y
