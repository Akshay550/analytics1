
omni = read.csv(file.choose())
omni
head(omni)
mlr1 = lm(formula = sqty ~ price, data=omni) #sales depend on price
mlr2 = lm(formula = sqty ~ promotion, data=omni) # sales depend on promotion
mlr3 = lm(formula = sqty ~ price + promotion, data=omni)
summary(mlr1)
summary(mlr2)
summary(mlr3)
residuals(mlr3)
plot(omni$sqty,omni$price)
plot(density(residuals(mlr3)))
plot(mlr3,which = 2)
(ndata2 = data.frame(price=c(60,70), promotion=c(300,400)))
p1 = predict(mlr3, newdata = ndata2)
cbind(ndata2,p1)
