g$cluster=c20m$clustering
gcm20<-g[order(g$cluster),]
gcm20_pro=gcm20[, 1:17]
g=g[, 1:17]

gboostmck20=Kmeans(gcm20_pro, 20, iter.max = 100, nstart = 100, method = "manhattan")
dmck20=daisy(g, metric = "manhattan")
smck20=silhouette(c20m$clustering, dmck20)
plot(smck20, col = p2,border=NA)
dmck20_pro=daisy(gcm20_pro, metric = "manhattan")
smck20_pro=silhouette(gboostmck20$cluster, dmck20_pro)
plot(smck20_pro, col = p2,border=NA)