l$cluster=k5e$cluster
l5e<-l[order(l$cluster),]
l5e_pro=l5e[, 1:17]
l=l[, 1:17]

dkdb5=daisy(l, metric = "euclidean")
plot(silhouette(k5e$cluster, dkdb5), 
     col = c("red", "green", "blue", "purple", "yellow"), border = NA)
lboostkdb5=hdbscan(l5e_pro, minPts = 4)
# l5e_pro$cluster = lboostkdb5$cluster
# l5 = l5e_pro[!l5e_pro$cluster == 0, 1:17]
# lboostkdb5_pro=hdbscan(l5, minPts = 4)
# l5$cluster = lboostkdb5_pro$cluster
# l5_1 = l5[!l5$cluster == 0, 1:17]
# lboostkdb5_pro1=hdbscan(l5_1, minPts = 4)
# l5_1$cluster = lboostkdb5_pro1$cluster
# l5_2 = l5_1[!l5_1$cluster == 0, 1:17]
# lboostkdb5_pro2=hdbscan(l5_2, minPts = 4)
dkdb5_pro=daisy(l5e_pro, metric = "euclidean")
plot(silhouette(l5e_pro$cluster, dkdb5_pro), 
     col = distinctColorPalette(9), border = NA)
# dkdb5_pro1=daisy(l5, metric = "euclidean")
# plot(silhouette(lboostkdb5_pro$cluster, dkdb5_pro1), 
#      col = distinctColorPalette(9), border = NA)