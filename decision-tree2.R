

gender = sample(x=c('Male','Female'), size = 1000, replace=T, prob =c(0.5,0.5))
buy = sample(x=c('Buy','Not Buy'), size = 1000, replace=T, prob =c(0.5,0.5))
married = sample(x=c('Married','Single'), size = 1000, replace=T, prob =c(0.3,0.7))
age= ceiling(runif(1000,22,30))
course = sample(x=c('PhD','MBA','BBA'), size = 1000, replace=T, prob =c(0.3,0.4,0.3))
student2 = data.frame(buy,gender,married,age,course)
head(student2)

library(rpart)
ctree = rpart(buy ~ ., method = 'class', data=student2)
ctree2 = rpart(buy ~ ., method = 'class', data=student2, cp=-1)
printcp(ctree2)
ctree2b=prune(ctree, cp = 0.0266)
ctree
library(rpart.plot)
rpart.plot(ctree)

names(student2)
ndata1 = data.frame(gender = c('Female','Male'), age = c(25,30), course = c('BBA','MBA'), married=c('Married','Single'))
ndata1
(p1=predict(ctree, newdata=ndata1, type='class'))
(p2=predict(ctree, newdata=ndata1, type='prob'))
cbind(ndata1,p1,p2)
ndata1
