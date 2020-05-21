g$cluster=c10e$clustering
gce10<-g[order(g$cluster),]
gce10_pro=gce10[, 1:17]
g=g[, 1:17]

gboostce10=clara(gce10_pro, 10, metric = "manhattan", stand = FALSE, samples = 100, sampsize = 50, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dce10=daisy(g, metric = "euclidean")
sce10=silhouette(c10e$clustering, dce10)
plot(sce10, col = p1,border=NA)
dce10_pro=daisy(gce10_pro, metric = "manhattan")
sce10_pro=silhouette(gboostce10$clustering, dce10_pro)
plot(sce10_pro, col = p1,border=NA)