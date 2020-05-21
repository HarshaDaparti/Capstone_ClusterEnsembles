x$cluster=clm$clustering
xcm2<-x[order(x$cluster),]
xcm2_pro=xcm2[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/xcm2.csv")
# 
# xcm2_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/xcm2_pro.csv")
x=x[, 1:17]

xboostcm2=clara(xcm2_pro, 2, metric = "euclidean", stand = FALSE, samples = 50, sampsize = 5, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dcm2=daisy(x, metric = "manhattan")
scm2=silhouette(clm$clustering, dcm2)
plot(scm2, col = c("red", "green"))
dcm2_pro=daisy(xcm2_pro, metric = "euclidean")
scm2_pro=silhouette(xboostcm2$clustering, dcm2_pro)
plot(scm2_pro, col = c("red", "green"))