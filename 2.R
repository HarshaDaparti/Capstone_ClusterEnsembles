library(RMySQL)
db1=dbConnect(MySQL(), user='root', password='harsha999', dbname='bank', host='localhost')
daty=dbSendQuery(db1, 'select * from bnk where number<=500')
dat500=fetch(daty, n=-1)

summary(dat500)

dat500$job=as.factor(dat500$job)
dat500$marital=as.factor(dat500$marital)
dat500$education=as.factor(dat500$education)
dat500$default=as.factor(dat500$default)
dat500$housing=as.factor(dat500$housing)
dat500$loan=as.factor(dat500$loan)
dat500$contact=as.factor(dat500$contact)
dat500$month=as.factor(dat500$month)
dat500$poutcome=as.factor(dat500$poutcome)
dat500$y=as.factor(dat500$y)

#datc<-dat500

dat500$job=as.numeric(dat500$job)
dat500$marital=as.numeric(dat500$marital)
dat500$education=as.numeric(dat500$education)
dat500$default=as.numeric(dat500$default)
dat500$housing=as.numeric(dat500$housing)
dat500$loan=as.numeric(dat500$loan)
dat500$contact=as.numeric(dat500$contact)
dat500$month=as.numeric(dat500$month)
dat500$poutcome=as.numeric(dat500$poutcome)
dat500$y=as.numeric(dat500$y)

g=dat500[, 1:17]

k5e=Kmeans(g, 5, iter.max = 100, nstart = 100, method = "euclidean")
k10e=Kmeans(g, 10, iter.max = 100, nstart = 100, method = "euclidean")
k20e=Kmeans(g, 20, iter.max = 100, nstart = 100, method = "euclidean")

k5m=Kmeans(g, 5, iter.max = 100, nstart = 100, method = "manhattan")
k10m=Kmeans(g, 10, iter.max = 100, nstart = 100, method = "manhattan")
k20m=Kmeans(g, 20, iter.max = 100, nstart = 100, method = "manhattan")



plot(g, col=(k5e$cluster+1), main="k5e", pch=20, cex=1)
plot(g, col=(k10e$cluster+1), main="k10e", pch=20, cex=1)
plot(g, col=(k20e$cluster+1), main="k20e", pch=20, cex=1)

plot(g, col=(k5m$cluster+1), main="k5m", pch=20, cex=1)
plot(g, col=(k10m$cluster+1), main="k10m", pch=20, cex=1)
plot(g, col=(k20m$cluster+1), main="k20m", pch=20, cex=1)
