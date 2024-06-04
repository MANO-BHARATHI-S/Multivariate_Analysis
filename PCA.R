

#PCA
library("FactoMineR")
library("factoextra")
data=mydata
dat2=data[,-1]
dat1=dat2
head(dat1)
pca1=prcomp(dat1, scale = TRUE)
pca2= PCA( dat1, graph=FALSE)
pca2$eig
eigvect=round(pca1$rotation,digits=3)
eigvect
fviz_pca_ind(pca1,repel = TRUE, title="Relative peak area (%)")
fviz_pca_var(pca1,col.var = "contrib",gradient.cols = c("green", "red", "blue"),title="Relative peak area (%)")

fviz_pca_biplot(pca1, label = "var", habillage=kundha_pca$SW,
                addEllipses=TRUE, ellipse.level=0.95,
                ggtheme = theme_minimal(), title="Relative peak area (%)")
fviz_screeplot(pca1, addlabels = TRUE, ylim = c(0, 50))
fviz_screeplot(pca1,addlabels = TRUE, ylim = c(0, 50)) +
  geom_hline(yintercept=10, linetype=2, color="red")

