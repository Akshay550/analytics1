mtcars
#git config --global user.email "akshaydave550@gmail.com"
#git config --global user.name "Akshay550"

women
fit = lm(weight ~ height, data = women) #simple linear regrassion
#fit = lm(sales~ price + promotion, data = )#multiple linear regrassion
summary(fit)
names(women)
(ndata1 = data.frame(height=c(67.5,70)))
p1 = predict(fit, newdata = ndata1)
cbind(ndata1,p1)
