g$cluster=c5e$clustering
gce5<-g[order(g$cluster),]
gce5_pro=gce5[, 1:17]
g=g[, 1:17]

gboosteck5=Kmeans(gce5_pro, 5, iter.max = 100, nstart = 100, method = "euclidean")
deck5=daisy(g, metric = "euclidean")
seck5=silhouette(c5e$clustering, deck5)
plot(seck5, col = c("red", "green","yellow","blue","purple"),border=NA)
deck5_pro=daisy(gce5_pro, metric = "euclidean")
seck5_pro=silhouette(gboosteck5$cluster, deck5_pro)
plot(seck5_pro, col = c("red", "green","yellow","blue","purple"),border=NA)