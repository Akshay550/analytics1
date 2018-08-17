#clustering

A = c(1,1.5,3,5,3.5,4.5,3.5)
B = c(1,2,4,7,5,5,4.5)
marks = data.frame(A,B)
marks
(c1 = kmeans(marks, centers = 3))
c1
cbind(marks, c1$cluster)
plot(marks, pch=10, col = c1$cluster)
c1$centers
points(c1$centers, col = 1:3, pch = 8, cex = 3)

head(iris)
str(iris$Species)
iris1=iris[,-5]
iris1
head(iris1)

irisk1= kmeans(iris1, centers = 3)
irisk1
irisk1$cluster
irisk1$centers
colMeans(iris1[irisk1$cluster==1,])

(iris[irisk1$cluster==1,])

plot(iris1$Sepal.Length, col=1:3)

#Selecting number of clusters

library(NbClust)
head(iris1)
km1=kmeans(iris1, centers = 1)
km1$tot.withinss

km2=kmeans(iris1, centers = 2)
km2$tot.withinss
km2$withinss

km3=kmeans(iris1, centers = 3)
km3$tot.withinss


nc=NbClust(iris1, distance = "euclidean", min.nc=2, max.nc=15, method="average")

mtcars
names(mtcars)
data2= mtcars[c('mpg', 'disp','hp','wt')]
nc=NbClust(data2, distance = "euclidean", min.nc=2, max.nc=15, method="average")
