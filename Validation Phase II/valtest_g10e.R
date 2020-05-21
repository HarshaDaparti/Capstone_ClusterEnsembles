k10e$cluster
g$cluster=k10e$cluster
g10e<-g[order(g$cluster),]
g10e_pro=g10e[, 1:17]
g=g[, 1:17]

gboost10e=Kmeans(g10e_pro, 10, iter.max = 100, nstart = 100, method = "manhattan")
d10e=daisy(g, metric = "euclidean")
#s10e=silhouette(k10e$cluster, d10e)
plot(silhouette(k10e$cluster, d10e), col=p1, border = NA)
d10e_pro=daisy(g10e_pro, metric = "manhattan")
#s10e_pro=silhouette(gboost10e$cluster, d10e_pro)
plot(silhouette(gboost10e$cluster, d10e_pro), col = p1, border = NA)