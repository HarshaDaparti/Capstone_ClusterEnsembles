g$cluster=k10m$cluster
g10m<-g[order(g$cluster),]
g10m_pro=g10m[, 1:17]
g=g[, 1:17]

gboost10m=Kmeans(g10m_pro, 10, iter.max = 100, nstart = 100, method = "euclidean")
d10m=daisy(g, metric = "manhattan")
#s10m=silhouette(k10m$cluster, d10m)
plot(silhouette(k10m$cluster, d10m), col=p1, border = NA)
d10m_pro=daisy(g10m_pro, metric = "euclidean")
#s10m_pro=silhouette(gboost10m$cluster, d10m_pro)
plot(silhouette(gboost10m$cluster, d10m_pro), col = p1, border = NA)