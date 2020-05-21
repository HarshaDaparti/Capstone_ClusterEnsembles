g$cluster=k20m$cluster
gkm20<-g[order(g$cluster),]
gkm20_pro=gkm20[, 1:17]
g=g[, 1:17]

gboostmkc20=clara(gkm20_pro, 20, metric = "manhattan", stand = FALSE, samples = 100, sampsize = 50, 
                  trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dmkc20=daisy(g, metric = "manhattan")
smkc20=silhouette(k20m$cluster, dmkc20)
plot(smkc20, col = p2,border=NA)
dmkc20_pro=daisy(gkm20_pro, metric = "manhattan")
smkc20_pro=silhouette(gboostmkc20$clustering, dmkc20_pro)
plot(smkc20_pro, col = p2,border=NA)