#logistic regrassion

library(ISLR)
data(Default)
head(Default)
str(Default)

table(Default$default)
table(Default$student)
t1=table(Default$default, Default$student)
addmargin(t1)
addmargins(t1, mean)

library(dplyr)
Default %>% group_by(student, default) %>% summarise(n())
#want to know mean income of student who defaulted
Default %>% group_by(student, default) %>% summarise(mean(income), mean(balance))

#logistic model
logit1 = glm(default ~ income + balance + student, data = Default, family = 'binomial')

summary(logit1)
#ignore income column as it is not significant
logit2  = glm(default ~ balance + student, data = Default, family = 'binomial')
summary(logit2)

ndata1 = data.frame(balance = mean(Default$balance), student='Yes')
p1 = predict(logit2, newdata=ndata1, type ='response')

