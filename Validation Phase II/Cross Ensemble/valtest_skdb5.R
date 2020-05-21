g$cluster=k5e$cluster
g5e<-g[order(g$cluster),]
g5e_pro=g5e[, 1:17]
g=g[, 1:17]

dkdb5=daisy(g, metric = "euclidean")
plot(silhouette(k5e$cluster, dkdb5), 
     col = c("red", "green", "blue", "purple", "yellow"), border = NA)
gboostkdb5=hdbscan(g5e_pro, minPts = 4)
dkdb5_pro=daisy(g5e_pro, metric = "euclidean")
plot(silhouette(gboostkdb5$cluster, dkdb5_pro), 
     col = p1, border = NA)