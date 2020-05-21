g$cluster=k20e$cluster
g20e<-g[order(g$cluster),]
g20e_pro=g20e[, 1:17]
g=g[, 1:17]

dkdb20=daisy(g, metric = "euclidean")
plot(silhouette(k20e$cluster, dkdb20), 
     col = p2, border = NA)
gboostkdb20=hdbscan(g20e_pro, minPts = 4)
dkdb20_pro=daisy(g20e_pro, metric = "euclidean")
plot(silhouette(gboostkdb20$cluster, dkdb20_pro), 
     col = distinctColorPalette(10), border = NA)