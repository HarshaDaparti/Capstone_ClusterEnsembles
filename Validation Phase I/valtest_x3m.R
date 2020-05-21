k3m$cluster
x$cluster=k3m$cluster
x3m<-x[order(x$cluster),]
x3m_pro=x3m[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x3m.csv")
# 
# x3m_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x3m_pro.csv")
x=x[, 1:17]

xboost3m=Kmeans(x3_pro, 3, iter.max = 50, nstart = 100, method = "euclidean")
d3m=daisy(x, metric = "manhattan")
s3m=silhouette(k3m$cluster, d3m)
plot(s3m, col = c("red", "green", "blue"))
d3m_pro=daisy(x3m_pro, metric = "euclidean")
s3m_pro=silhouette(xboost3m$cluster, d3m_pro)
plot(s3m_pro, col = c("red", "green", "blue"))
