k2m$cluster
x$cluster=k2m$cluster
x2m<-x[order(x$cluster),]
x2m_pro=x2m[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x2m.csv")
# 
# x2m_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x2m_pro.csv")
x=x[, 1:17]

xboost2m=Kmeans(x2m_pro, 2, iter.max = 50, nstart = 100, method = "euclidean")
d2m=daisy(x, metric = "manhattan")
s2m=silhouette(k2m$cluster, d2m)
plot(s2m, col = c("red", "green"))
d2m_pro=daisy(x2m_pro, metric = "euclidean")
s2m_pro=silhouette(xboost2m$cluster, d2m_pro)
plot(s2m_pro, col = c("red", "green"))
