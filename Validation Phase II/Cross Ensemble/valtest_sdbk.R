g$cluster=hdb1$cluster
gdb<-g[order(g$cluster),]
gdb_pro=gdb[, 1:17]
g=g[, 1:17]

ddbk5=daisy(g, metric = "euclidean")
plot(silhouette(hdb1$cluster, ddbk5), 
     col = p1,border=NA)

gboostdbk5=Kmeans(gdb_pro, 5, iter.max = 100, nstart = 100, method = "euclidean")
ddbk5_pro=daisy(gdb_pro, metric = "euclidean")
plot(silhouette(gboostdbk5$cluster, ddbk5_pro),
     col = distinctColorPalette(5),border=NA)

gboostdbk10=Kmeans(gdb_pro, 10, iter.max = 100, nstart = 100, method = "euclidean")
ddbk10_pro=daisy(gdb_pro, metric = "euclidean")
plot(silhouette(gboostdbk10$cluster, ddbk10_pro),
     col = p1,border=NA)

gboostdbk20=Kmeans(gdb_pro, 20, iter.max = 100, nstart = 100, method = "euclidean")
ddbk20_pro=daisy(gdb_pro, metric = "euclidean")
plot(silhouette(gboostdbk20$cluster, ddbk20_pro),
     col = p2,border=NA)
