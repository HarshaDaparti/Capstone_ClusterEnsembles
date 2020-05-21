k3e$cluster
x$cluster=k3e$cluster
x3e<-x[order(x$cluster),]
x3e_pro=x3e[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x3e.csv")
# 
# x3e_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x3e_pro.csv")
x=x[, 1:17]

xboost3e=Kmeans(x3e_pro, 3, iter.max = 50, nstart = 100, method = "manhattan")
d3e=daisy(x, metric = "euclidean")
s3e=silhouette(k3e$cluster, d3e)
plot(s3e, col = c("red", "green", "blue"))
d3e_pro=daisy(x3e_pro, metric = "manhattan")
s3e_pro=silhouette(xboost3e$cluster, d3e_pro)
plot(s3e_pro, col = c("red", "green", "blue"))
