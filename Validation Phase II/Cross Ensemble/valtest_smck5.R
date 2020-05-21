g$cluster=c5m$clustering
gcm5<-g[order(g$cluster),]
gcm5_pro=gcm5[, 1:17]
g=g[, 1:17]

gboostmck5=Kmeans(gcm5_pro, 5, iter.max = 100, nstart = 100, method = "manhattan")
dmck5=daisy(g, metric = "manhattan")
smck5=silhouette(c5m$clustering, dmck5)
plot(smck5, col = c("red", "green","yellow","blue","purple"),border=NA)
dmck5_pro=daisy(gcm5_pro, metric = "manhattan")
smck5_pro=silhouette(gboostmck5$cluster, dmck5_pro)
plot(smck5_pro, col = c("red", "green","yellow","blue","purple"),border=NA)