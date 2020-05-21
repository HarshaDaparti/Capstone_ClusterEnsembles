k20e$cluster
g$cluster=k20e$cluster
g20e<-g[order(g$cluster),]
g20e_pro=g20e[, 1:17]
g=g[, 1:17]

gboost20e=Kmeans(g20e_pro, 20, iter.max = 100, nstart = 100, method = "manhattan")
d20e=daisy(g, metric = "euclidean")
#s20e=silhouette(k20e$cluster, d20e)
plot(silhouette(k20e$cluster, d20e), col=p2, border = NA)
d20e_pro=daisy(g20e_pro, metric = "manhattan")
#s20e_pro=silhouette(gboost20e$cluster, d20e_pro)
plot(silhouette(gboost20e$cluster, d20e_pro), col = p2, border = NA)