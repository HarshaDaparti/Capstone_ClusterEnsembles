g$cluster=k5e$cluster
g5e<-g[order(g$cluster),]
g5e_pro=g5e[, 1:17]
g=g[, 1:17]

gboost5e=Kmeans(g5e_pro, 5, iter.max = 100, nstart = 100, method = "manhattan")
d5e=daisy(g, metric = "euclidean")
#s5e=silhouette(k5e$cluster, d5e)
plot(silhouette(k5e$cluster, d5e), col = c("red", "green", "blue", "purple", "yellow"), border = NA)
d5e_pro=daisy(g5e_pro, metric = "manhattan")
#s5e_pro=silhouette(gboost5e$cluster, d5e_pro)
plot(silhouette(gboost5e$cluster, d5e_pro), col = c("red", "green", "blue", "purple", "yellow"), border = NA)