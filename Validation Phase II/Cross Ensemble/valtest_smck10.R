g$cluster=c10m$clustering
gcm10<-g[order(g$cluster),]
gcm10_pro=gcm10[, 1:17]
g=g[, 1:17]

gboostmck10=Kmeans(gcm10_pro, 10, iter.max = 100, nstart = 100, method = "manhattan")
dmck10=daisy(g, metric = "manhattan")
smck10=silhouette(c10m$clustering, dmck10)
plot(smck10, col = p1,border=NA)
dmck10_pro=daisy(gcm10_pro, metric = "manhattan")
smck10_pro=silhouette(gboostmck10$cluster, dmck10_pro)
plot(smck10_pro, col = p1,border=NA)