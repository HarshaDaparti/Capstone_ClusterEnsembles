g$cluster=k10m$cluster
gkm10<-g[order(g$cluster),]
gkm10_pro=gkm10[, 1:17]
g=g[, 1:17]

gboostmkc10=clara(gkm10_pro, 10, metric = "manhattan", stand = FALSE, samples = 100, sampsize = 50, 
                 trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dmkc10=daisy(g, metric = "manhattan")
smkc10=silhouette(k10m$cluster, dmkc10)
plot(smkc10, col = p1,border=NA)
dmkc10_pro=daisy(gkm10_pro, metric = "manhattan")
smkc10_pro=silhouette(gboostmkc10$clustering, dmkc10_pro)
plot(smkc10_pro, col = p1,border=NA)