g$cluster=c5m$clustering
gcm5<-g[order(g$cluster),]
gcm5_pro=gcm5[, 1:17]
# write.csv(g, file = "C:/Users/Harsha Daparti/Desktop/Validation/gcm5.csv")
# 
# gcm5_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/gcm5_pro.csv")
g=g[, 1:17]

gboostcm5=clara(gcm5_pro, 5, metric = "euclidean", stand = FALSE, samples = 100, sampsize = 50, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dcm5=daisy(g, metric = "manhattan")
scm5=silhouette(c5m$clustering, dcm5)
plot(scm5, col = c("red", "green","yellow","blue","purple"),border=NA)
dcm5_pro=daisy(gcm5_pro, metric = "euclidean")
scm5_pro=silhouette(gboostcm5$clustering, dcm5_pro)
plot(scm5_pro, col = c("red", "green","yellow","blue","purple"),border=NA)