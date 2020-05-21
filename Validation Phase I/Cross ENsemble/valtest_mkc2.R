x$cluster=k2m$cluster
x2m<-x[order(x$cluster),]
x2m_pro=x2m[, 1:17]

x=x[, 1:17]

xboostmkc2=clara(x2m_pro, 2, metric = "manhattan", stand = FALSE, samples = 50, sampsize = 5, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dmkc2=daisy(x, metric = "manhattan")
smkc2=silhouette(k2m$cluster, dmkc2)
plot(smkc2, col = c("red", "green"))
dmkc2_pro=daisy(x2m_pro, metric = "manhattan")
smkc2_pro=silhouette(xboostmkc2$clustering, dmkc2_pro)
plot(smkc2_pro, col = c("red", "green"))