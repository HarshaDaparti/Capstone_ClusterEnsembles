g$cluster=c10m$clustering
gcm10<-g[order(g$cluster),]
gcm10_pro=gcm10[, 1:17]
g=g[, 1:17]

gboostcm10=clara(gcm10_pro, 10, metric = "euclidean", stand = FALSE, samples = 100, sampsize = 50, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dcm10=daisy(g, metric = "manhattan")
scm10=silhouette(c10m$clustering, dcm10)
plot(scm10, col = p1,border=NA)
dcm10_pro=daisy(gcm10_pro, metric = "euclidean")
scm10_pro=silhouette(gboostcm10$clustering, dcm10_pro)
plot(scm10_pro, col = p1,border=NA)