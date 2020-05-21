g$cluster=k20m$cluster
g20m<-g[order(g$cluster),]
g20m_pro=g20m[, 1:17]
g=g[, 1:17]

gboost20m=Kmeans(g20m_pro, 20, iter.max = 100, nstart = 100, method = "manhattan")
d20m=daisy(g, metric = "euclidean")
#s20m=silhouette(k20m$cluster, d20m)
plot(silhouette(k20m$cluster, d20m), col=p2, border = NA)
d20m_pro=daisy(g20m_pro, metric = "manhattan")
#s20m_pro=silhouette(gboost20m$cluster, d20m_pro)
plot(silhouette(gboost20m$cluster, d20m_pro), col = p2, border = NA)