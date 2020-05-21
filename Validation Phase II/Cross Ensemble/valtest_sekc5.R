g$cluster=k5e$cluster
gke5<-g[order(g$cluster),]
gke5_pro=gke5[, 1:17]
g=g[, 1:17]

gboostekc5=clara(gke5_pro, 5, metric = "euclidean", stand = FALSE, samples = 100, sampsize = 50, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dekc5=daisy(g, metric = "euclidean")
sekc5=silhouette(k5e$cluster, dekc5)
plot(sekc5, col = c("red", "green","yellow","blue","purple"),border=NA)
dekc5_pro=daisy(gke5_pro, metric = "euclidean")
sekc5_pro=silhouette(gboostekc5$clustering, dekc5_pro)
plot(sekc5_pro, col = c("red", "green","yellow","blue","purple"),border=NA)