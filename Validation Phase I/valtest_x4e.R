k4e$cluster
x$cluster=k4e$cluster
x4e<-x[order(x$cluster),]
x4e_pro=x4e[, 1:17]
# write.csv(x, file = "C:/Users/Harsha Daparti/Desktop/Validation/x4e.csv")
# 
# x4e_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/x4e_pro.csv")
x=x[, 1:17]

xboost4e=Kmeans(x4e_pro, 4, iter.max = 50, nstart = 100, method = "manhattan")
d4e=daisy(x, metric = "euclidean")
s4e=silhouette(k4e$cluster, d4e)
plot(s4e, col = c("red", "green", "blue", "purple"))
d4e_pro=daisy(x4e_pro, metric = "manhattan")
s4e_pro=silhouette(xboost4e$cluster, d4e_pro)
plot(s4e_pro, col = c("red", "green", "blue", "purple"))
