library(RMySQL)
db1=dbConnect(MySQL(), user='root', password='harsha999', dbname='bank', host='localhost')
daty=dbSendQuery(db1, 'select * from bnk where number<=100')
datf=fetch(daty, n=-1)

summary(datf)

# is.numeric(datf$age)
# is.numeric(datf$job)
# is.numeric(datf$marital)
# is.numeric(datf$education)
# is.numeric(datf$default)
# is.numeric(datf$balance)
# is.numeric(datf$housing)
# is.numeric(datf$loan)
# is.numeric(datf$contact)
# is.numeric(datf$day)
# is.numeric(datf$month)
# is.numeric(datf$duration)
# is.numeric(datf$campaign)
# is.numeric(datf$pdays)
# is.numeric(datf$previous)
# is.numeric(datf$poutcome)
# is.numeric(datf$y)
# is.numeric(datf$number)

#chracter attributes: job, marital, education, default, housing, loan, contact, month, poutcome, y

#x=as.factor(datf$job)
#successful conversion to factor

datf$job=as.factor(datf$job)
datf$marital=as.factor(datf$marital)
datf$education=as.factor(datf$education)
datf$default=as.factor(datf$default)
datf$housing=as.factor(datf$housing)
datf$loan=as.factor(datf$loan)
datf$contact=as.factor(datf$contact)
datf$month=as.factor(datf$month)
datf$poutcome=as.factor(datf$poutcome)
datf$y=as.factor(datf$y)

summary(datf)

test=datf[,3:9]
clust=kmodes(test, 4, iter.max=20, weighted=FALSE, fast=TRUE)
clust
#K-modes clustering with 4 clusters of sizes 42, 24, 11, 23
#Cluster modes:
#  marital education default balance housing loan  contact
#1 married  tertiary      no       0      no   no cellular
#2  single  tertiary      no    -221     yes   no  unknown
#3 married secondary      no    -516      no  yes cellular
#4 married secondary      no       0     yes   no cellular

#Clustering vector:
#  [1] 1 3 2 2 4 1 1 4 2 3 4 4 1 1 3 1 1 2 2 1 4 1 2 1 1 1 2 1 3 3 1 1 1 2 1 2 1 4 4 2 2 1 4 1 2 2 1 2 2 4 1 4 1
#[54] 1 4 4 3 1 2 2 3 4 1 1 1 4 4 4 3 1 1 2 2 2 4 1 4 3 1 4 4 1 3 1 1 2 3 2 4 4 1 2 4 1 1 1 2 1 1 1

#Within cluster simple-matching distance by cluster:
# [1] 91 58 21 36

#Available components:
# [1] "cluster"    "size"       "modes"      "withindiff" "iterations" "weighted"

datc<-datf



summary(datc)

#kmclust<-kmeans(datc[c(1,2)], 5, nstart=100)
#plot(datc[c(1,2)], col=(kmclust$cluster+1), main="Kmeans testing", pch=20, cex=1)
#kmclust<-kmeans(datc[c(1,17)], 3, nstart=100)
#plot(datc[c(1,17)], col=(kmclust$cluster+1), main="Kmeans testing", pch=20, cex=1)

plot(datc[1:17])
kmclust<-kmeans(datc[1:17], 3, nstart=100)
plot(datc[1:17], col=(kmclust$cluster+1), main="Kmeans testing", pch=20, cex=1)


datf$job=as.numeric(datf$job)
datf$marital=as.numeric(datf$marital)
datf$education=as.numeric(datf$education)
datf$default=as.numeric(datf$default)
datf$housing=as.numeric(datf$housing)
datf$loan=as.numeric(datf$loan)
datf$contact=as.numeric(datf$contact)
datf$month=as.numeric(datf$month)
datf$poutcome=as.numeric(datf$poutcome)
datf$y=as.numeric(datf$y)

# for(i in 2:7){
#   k[i]=Kmeans(datf[,1:17], i, iter.max = 50, nstart = 100, method = "euclidean")
# }

k2e=Kmeans(datf[,1:17], 2, iter.max = 50, nstart = 100, method = "euclidean")
k3e=Kmeans(datf[,1:17], 3, iter.max = 50, nstart = 100, method = "euclidean")
k4e=Kmeans(datf[,1:17], 4, iter.max = 50, nstart = 100, method = "euclidean")
k5e=Kmeans(datf[,1:17], 5, iter.max = 50, nstart = 100, method = "euclidean")

k2m=Kmeans(datf[,1:17], 2, iter.max = 50, nstart = 100, method = "manhattan")
k3m=Kmeans(datf[,1:17], 3, iter.max = 50, nstart = 100, method = "manhattan")
k4m=Kmeans(datf[,1:17], 4, iter.max = 50, nstart = 100, method = "manhattan")
k5m=Kmeans(datf[,1:17], 5, iter.max = 50, nstart = 100, method = "manhattan")

#k0=Kmeans(iris[2:3], 5, iter.max=50, nstart=100, method="euclidean")
#k1=Kmeans(iris[2:3], 5, iter.max=50, nstart=100, method="manhattan")

plot(datf[, 1:17], col=(k2e$cluster+1), main="k2e", pch=20, cex=1)
plot(datf[, 1:17], col=(k3e$cluster+1), main="k3e", pch=20, cex=1)
plot(datf[, 1:17], col=(k4e$cluster+1), main="k4e", pch=20, cex=1)
plot(datf[, 1:17], col=(k5e$cluster+1), main="k5e", pch=20, cex=1)

plot(datf[, 1:17], col=(k2m$cluster+1), main="k2m", pch=20, cex=1)
plot(datf[, 1:17], col=(k3m$cluster+1), main="k3m", pch=20, cex=1)
plot(datf[, 1:17], col=(k4m$cluster+1), main="k4m", pch=20, cex=1)
plot(datf[, 1:17], col=(k5m$cluster+1), main="k5m", pch=20, cex=1)