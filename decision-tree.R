#Decision tree

library(rpart) #classification
library(rart.plot) #visualising the tree

str(iris)
head(iris)
summary(iris)
names(iris)

ctree = rpart(Species ~ ., method = 'class', data=iris)
#Here '.' means sum of all the other columns in the data iris that ~ to species
ctree
rpart.plot(ctree, main = 'classification Tree', nn=T, type=4, extra = 104, cex =1.2)

