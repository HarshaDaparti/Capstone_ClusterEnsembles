k2e$cluster
x$cluster=k2e$cluster
x2e<-x[order(x$cluster),]
x2e_pro=x2e[, 1:17]
#write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x2e.csv")
#
#x2e_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x2e_pro.csv")
x=x[, 1:17]

xboost2e=Kmeans(x2e_pro, 2, iter.max = 50, nstart = 100, method = "manhattan")
d2e=daisy(x, metric = "euclidean")
s2e=silhouette(k2e$cluster, d2e)
plot(s2e, col = c("red", "green"))
d2e_pro=daisy(x2e_pro, metric = "manhattan")
s2e_pro=silhouette(xboost2e$cluster, d2e_pro)
plot(s2e_pro, col = c("red", "green"))
