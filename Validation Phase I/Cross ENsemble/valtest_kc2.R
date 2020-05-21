x$cluster=k2e$cluster
x2e<-x[order(x$cluster),]
x2e_pro=x2e[, 1:17]

x=x[, 1:17]

xboostkc2=clara(x2e_pro, 2, metric = "euclidean", stand = FALSE, samples = 50, sampsize = 5, 
                trace = 0, rngR = FALSE, pamLike = TRUE, correct.d = TRUE)
dkc2=daisy(x, metric = "euclidean")
skc2=silhouette(k2e$cluster, dkc2)
plot(skc2, col = c("red", "green"))
dkc2_pro=daisy(x2e_pro, metric = "euclidean")
skc2_pro=silhouette(xboostkc2$clustering, dkc2_pro)
plot(skc2_pro, col = c("red", "green"))