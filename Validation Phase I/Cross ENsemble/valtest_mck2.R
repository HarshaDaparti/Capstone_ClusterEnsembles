x$cluster=clm$clustering
xcm2<-x[order(x$cluster),]
xcm2_pro=xcm2[, 1:17]
x=x[, 1:17]

xboostmck2=Kmeans(xcm2_pro, 2, iter.max = 50, nstart = 100, method = "manhattan")
dmck2=daisy(x, metric = "manhattan")
smck2=silhouette(clm$clustering, dmck2)
plot(smck2, col = c("red", "green"))
dmck2_pro=daisy(xcm2_pro, metric = "manhattan")
smck2_pro=silhouette(xboostmck2$cluster, dmck2_pro)
plot(smck2_pro, col = c("red", "green"))