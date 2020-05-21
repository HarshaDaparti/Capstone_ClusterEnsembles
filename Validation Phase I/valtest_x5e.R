k5e$cluster
x$cluster=k5e$cluster
x5e<-x[order(x$cluster),]
x5e_pro=x5e[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x5e.csv")
# 
# x5e_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x5e_pro.csv")
x=x[, 1:17]

xboost5e=Kmeans(x5e_pro, 5, iter.max = 50, nstart = 100, method = "manhattan")
d5e=daisy(x, metric = "euclidean")
s5e=silhouette(k5e$cluster, d5e)
plot(s5e, col = c("red", "green", "blue", "purple", "black"))
d5e_pro=daisy(x5e_pro, metric = "manhattan")
s5e_pro=silhouette(xboost5e$cluster, d5e_pro)
plot(s5e_pro, col = c("red", "green", "blue", "purple", "black"))
