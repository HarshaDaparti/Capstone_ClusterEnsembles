g$cluster=c20e$clustering
gce20<-g[order(g$cluster),]
gce20_pro=gce20[, 1:17]
g=g[, 1:17]

gboostce20=clara(gce20_pro, 20, metric = "manhattan", stand = FALSE, samples = 100, sampsize = 50, 
                 trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dce20=daisy(g, metric = "euclidean")
sce20=silhouette(c20e$clustering, dce20)
plot(sce20, col = p2,border=NA)
dce20_pro=daisy(gce20_pro, metric = "manhattan")
sce20_pro=silhouette(gboostce20$clustering, dce20_pro)
plot(sce20_pro, col = p2,border=NA)