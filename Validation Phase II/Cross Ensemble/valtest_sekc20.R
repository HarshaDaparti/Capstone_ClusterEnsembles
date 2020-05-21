g$cluster=k20e$cluster
gke20<-g[order(g$cluster),]
gke20_pro=gke20[, 1:17]
g=g[, 1:17]

gboostekc20=clara(gke20_pro, 20, metric = "euclidean", stand = FALSE, samples = 100, sampsize = 50, 
                  trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dekc20=daisy(g, metric = "euclidean")
sekc20=silhouette(k20e$cluster, dekc20)
plot(sekc20, col = p2,border=NA)
dekc20_pro=daisy(gke20_pro, metric = "euclidean")
sekc20_pro=silhouette(gboostekc20$clustering, dekc20_pro)
plot(sekc20_pro, col = p2,border=NA)