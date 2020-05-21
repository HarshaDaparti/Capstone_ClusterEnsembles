g$cluster=k10e$cluster
gke10<-g[order(g$cluster),]
gke10_pro=gke10[, 1:17]
g=g[, 1:17]

gboostekc10=clara(gke10_pro, 10, metric = "euclidean", stand = FALSE, samples = 100, sampsize = 50, 
                 trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dekc10=daisy(g, metric = "euclidean")
sekc10=silhouette(k10e$cluster, dekc10)
plot(sekc10, col = p1,border=NA)
dekc10_pro=daisy(gke10_pro, metric = "euclidean")
sekc10_pro=silhouette(gboostekc10$clustering, dekc10_pro)
plot(sekc10_pro, col = p1,border=NA)