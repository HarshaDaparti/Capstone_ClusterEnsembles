test=iris[,2:3]
kmclust=Kmeans(test, 2, iter.max = 10, nstart = 50, method = "euclidean")
test=as.data.frame(test)
test$cluster=kmclust$cluster
write.csv(test, file = "C:/Users/Harsha Daparti/Desktop/Validation/test.csv")
#Sort and remove the cluster column
test_pro=read.csv(file = "C:/Users/Harsha Daparti/Desktop/Validation/test_pro.csv")
boost=Kmeans(test_pro, 2, iter.max = 10, nstart = 50, method = "manhattan")
dis=daisy(test, metric = "euclidean")
sil=silhouette(kmclust$cluster, dis)
plot(sil, col = c("red", "green", "blue", "purple"))
dis_pro = daisy(test_pro, metric = "manhattan")
sil_pro=silhouette(boost$cluster, dis_pro)
plot(sil_pro, col = c("red", "green", "blue", "purple"))
