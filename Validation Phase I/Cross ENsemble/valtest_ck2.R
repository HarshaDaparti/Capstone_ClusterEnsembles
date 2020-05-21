x$cluster=cl$clustering
xce2<-x[order(x$cluster),]
xce2_pro=xce2[, 1:17]
x=x[, 1:17]

xboostck2=Kmeans(xce2_pro, 2, iter.max = 50, nstart = 100, method = "euclidean")
dck2=daisy(x, metric = "euclidean")
sck2=silhouette(cl$clustering, dck2)
plot(sck2, col = c("red", "green"))
dck2_pro=daisy(xce2_pro, metric = "euclidean")
sck2_pro=silhouette(xboostck2$cluster, dck2_pro)
plot(sck2_pro, col = c("red", "green"))