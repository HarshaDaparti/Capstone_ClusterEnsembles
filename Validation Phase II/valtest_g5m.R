g$cluster=k5m$cluster
g5m<-g[order(g$cluster),]
g5m_pro=g5m[, 1:17]
g=g[, 1:17]

gboost5m=Kmeans(g5m_pro, 5, iter.max = 100, nstart = 100, method = "euclidean")
d5m=daisy(g, metric = "manhattan")
#s5m=silhouette(k5m$cluster, d5m)
plot(silhouette(k5m$cluster, d5m), col = c("red", "green", "blue", "purple", "yellow"), border = NA)
d5m_pro=daisy(g5m_pro, metric = "euclidean")
#s5m_pro=silhouette(gboost5m$cluster, d5m_pro)
plot(silhouette(gboost5m$cluster, d5m_pro), col = c("red", "green", "blue", "purple", "yellow"), border = NA)