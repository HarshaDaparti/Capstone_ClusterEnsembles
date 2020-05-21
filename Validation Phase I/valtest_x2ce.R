x$cluster=cl$clustering
xce2<-x[order(x$cluster),]
xce2_pro=xce2[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/xce2.csv")
# 
# xce2_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/xce2_pro.csv")
x=x[, 1:17]

xboostce2=clara(xce2_pro, 2, metric = "manhattan", stand = FALSE, samples = 50, sampsize = 5, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dce2=daisy(x, metric = "euclidean")
sce2=silhouette(cl$clustering, dce2)
plot(sce2, col = c("red", "green"))
dce2_pro=daisy(xce2_pro, metric = "manhattan")
sce2_pro=silhouette(xboostce2$clustering, dce2_pro)
plot(sce2_pro, col = c("red", "green"))