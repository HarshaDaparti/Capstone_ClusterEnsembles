g$cluster=c5e$clustering
gce5<-g[order(g$cluster),]
gce5_pro=gce5[, 1:17]
# write.csv(g, file = "C:/Users/Harsha Daparti/Desktop/Validation/gce5.csv")
# 
# gce5_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/gce5_pro.csv")
g=g[, 1:17]

gboostce5=clara(gce5_pro, 5, metric = "manhattan", stand = FALSE, samples = 100, sampsize = 50, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dce5=daisy(g, metric = "euclidean")
sce5=silhouette(c5e$clustering, dce5)
plot(sce5, col = c("red", "green","yellow","blue","purple"),border=NA)
dce5_pro=daisy(gce5_pro, metric = "manhattan")
sce5_pro=silhouette(gboostce5$clustering, dce5_pro)
plot(sce5_pro, col = c("red", "green","yellow","blue","purple"),border=NA)