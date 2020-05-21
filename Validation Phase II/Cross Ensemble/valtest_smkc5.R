g$cluster=k5m$cluster
gkm5<-g[order(g$cluster),]
gkm5_pro=gkm5[, 1:17]
g=g[, 1:17]

gboostmkc5=clara(gkm5_pro, 5, metric = "manhattan", stand = FALSE, samples = 100, sampsize = 50, 
                 trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dmkc5=daisy(g, metric = "manhattan")
smkc5=silhouette(k5m$cluster, dmkc5)
plot(smkc5, col = c("red", "green","yellow","blue","purple"),border=NA)
dmkc5_pro=daisy(gkm5_pro, metric = "manhattan")
smkc5_pro=silhouette(gboostmkc5$clustering, dmkc5_pro)
plot(smkc5_pro, col = c("red", "green","yellow","blue","purple"),border=NA)