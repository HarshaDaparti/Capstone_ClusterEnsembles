g$cluster=c20m$clustering
gcm20<-g[order(g$cluster),]
gcm20_pro=gcm20[, 1:17]
g=g[, 1:17]

gboostcm20=clara(gcm20_pro, 20, metric = "euclidean", stand = FALSE, samples = 100, sampsize = 50, 
                 trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dcm20=daisy(g, metric = "manhattan")
scm20=silhouette(c20m$clustering, dcm20)
plot(scm20, col = p2,border=NA)
dcm20_pro=daisy(gcm20_pro, metric = "euclidean")
scm20_pro=silhouette(gboostcm20$clustering, dcm20_pro)
plot(scm20_pro, col = p2,border=NA)