Dataset Used - bank.csv in the home folder

The abbrevations of the filenames in the folders are as follows:

n -> number of clusters

valtest_gne / valtest_xne = validation (along with ensembling) of the dataset using kmeans self-ensemble - Manhattan on Euclidean
valtest_gnm / valtest_xnm = validation (along with ensembling) of the dataset using kmeans self-ensemble - Euclidean on Manhattan
valtest_gcen / valtest_xnce = validation (along with ensembling) of the dataset using clara self-ensemble - Manhattan on Euclidean
valtest_gcmn / valtest_xncm = validation (along with ensembling) of the dataset using clara self-ensemble - Euclidean on Manhattan
valtest_seckn / valtest_ckn = validation of the dataset using kmeans on clara cross-ensemble - Euclidean
valtest_smckn / valtest_mckn = validation of the dataset using kmeans on clara cross-ensemble - Manhattan
valtest_sekcn / valtest_kcn = validation of the dataset using clara on kmeans cross ensemble - Eudlidean
valtest_smkcn / valtest_mkcn = validation of the dataset using clara on kmeans cross-ensemble - Manhattan
valtest_sdbk = valiation of the dataset using kmeans on dbscan cross-ensemble - Euclidean only
valtest_skdbn = validation of the dataser using dbscan on kmeans cross-ensemble - with (minPts=4)

