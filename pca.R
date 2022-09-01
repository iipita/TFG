pca = prcomp(data, scale = TRUE)
pcanorm = data
for (i in c(1:5)){
  t = (data[,i]-pca$center[i]) / pca$scale[i]
  pcanorm[,i] = t
}
pca$center
PC1 = pcanorm[,1] * pca$rotation[1,1] + pcanorm[,2] * pca$rotation[2,1] + pcanorm[,3] * pca$rotation[3,1] + pcanorm[,4] * pca$rotation[4,1] + pcanorm[,5] * pca$rotation[5,1]
PC1

p1 = ts(pca[["x"]][,1], frequency = 12, start = c(2007,1), end = c(2022,2))
p2 = ts(pca[["x"]][,2], frequency = 12, start = c(2007,1), end = c(2022,2))
p3 = ts(pca[["x"]][,3], frequency = 12, start = c(2007,1), end = c(2022,2))
regre = lm(ESI$ES.ESI ~ p1 + p2+ p3)
MAE = MAE(regre, ESI$ES.ESI)
MAPE = MAPE(regre, ESI$ES.ESI)
RMSE = RMSE(regre, ESI$ES.ESI)
