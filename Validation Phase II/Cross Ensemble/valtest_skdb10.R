g$cluster=k10e$cluster
g10e<-g[order(g$cluster),]
g10e_pro=g10e[, 1:17]
g=g[, 1:17]

dkdb10=daisy(g, metric = "euclidean")
plot(silhouette(k10e$cluster, dkdb10), 
     col = p1, border = NA)
gboostkdb10=hdbscan(g10e_pro, minPts = 4)
dkdb10_pro=daisy(g10e_pro, metric = "euclidean")
plot(silhouette(gboostkdb10$cluster, dkdb10_pro), 
     col = distinctColorPalette(11), border = NA)