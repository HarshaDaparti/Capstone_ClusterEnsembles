k4m$cluster
x$cluster=k4m$cluster
x4m<-x[order(x$cluster),]
x4m_pro=x4m[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x4m.csv")
# 
# x4m_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x4m_pro.csv")
x=x[, 1:17]

xboost4m=Kmeans(x4m_pro, 4, iter.max = 50, nstart = 100, method = "euclidean")
d4m=daisy(x, metric = "manhattan")
s4m=silhouette(k4m$cluster, d4m)
plot(s4m, col = c("red", "green", "blue", "purple"))
d4m_pro=daisy(x4m_pro, metric = "euclidean")
s4m_pro=silhouette(xboost4m$cluster, d4m_pro)
plot(s4m_pro, col = c("red", "green", "blue", "purple"))
