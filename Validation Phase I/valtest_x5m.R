k5m$cluster
x$cluster=k5m$cluster
x5m<-x[order(x$cluster),]
x5m_pro=x5m[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x5m.csv")
# 
# x5m_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x5m_pro.csv")
x=x[, 1:17]

xboost5m=Kmeans(x5m_pro, 5, iter.max = 50, nstart = 100, method = "euclidean")
d5m=daisy(x, metric = "manhattan")
s5m=silhouette(k5m$cluster, d5m)
plot(s5m, col = c("red", "green", "blue", "purple", "black"))
d5m_pro=daisy(x5m_pro, metric = "euclidean")
s5m_pro=silhouette(xboost5m$cluster, d5m_pro)
plot(s5m_pro, col = c("red", "green", "blue", "purple", "black"))
