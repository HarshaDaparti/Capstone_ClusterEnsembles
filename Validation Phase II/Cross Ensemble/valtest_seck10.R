g$cluster=c10e$clustering
gce10<-g[order(g$cluster),]
gce10_pro=gce10[, 1:17]
g=g[, 1:17]

gboosteck10=Kmeans(gce10_pro, 10, iter.max = 100, nstart = 100, method = "euclidean")
deck10=daisy(g, metric = "euclidean")
seck10=silhouette(c10e$clustering, deck10)
plot(seck10, col = p1,border=NA)
deck10_pro=daisy(gce10_pro, metric = "euclidean")
seck10_pro=silhouette(gboosteck10$cluster, deck10_pro)
plot(seck10_pro, col = p1,border=NA)