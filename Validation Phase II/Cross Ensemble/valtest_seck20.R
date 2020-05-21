g$cluster=c20e$clustering
gce20<-g[order(g$cluster),]
gce20_pro=gce20[, 1:17]
g=g[, 1:17]

gboosteck20=Kmeans(gce20_pro, 20, iter.max = 100, nstart = 100, method = "euclidean")
deck20=daisy(g, metric = "euclidean")
seck20=silhouette(c20e$clustering, deck20)
plot(seck20, col = p2,border=NA)
deck20_pro=daisy(gce20_pro, metric = "euclidean")
seck20_pro=silhouette(gboosteck20$cluster, deck20_pro)
plot(seck20_pro, col = p2,border=NA)