View(File_name)
FAC=File_Name[,-1]
summary(FAC)
library(psych)
FA=fa(r=FAC,
      nfactor=3,
      rotate = "varimax",
      fm="ml",
      residuals = TRUE)


factor_analysis <- fa(FAC, nfactors = 3)
KMO(FAC)
cortest.bartlett(FAC)
cor(FAC)
pca(FAC, nfactors = 3, rotate =F )
FCA=pca(FAC, nfactors = , rotate = F)
FCA
FCAL=pca(FAC,nfactors = 3, rotate = F)
FCAL
print(FCAL$loadings, cutoff = .5)
FCAL$communality
fana=pca(FAC, NFACTOR=3,rotate = "varimax")
fana
pcom=princomp(FAC, scores = TRUE, cor = TRUE)
pcom
plot(pcom)
plot(pcom, col=c(7))
screeplot(pcom, type = "line", main="Brand competitiveness")
screeplot(pcom, type = "line", main="Brand competitiveness",col=(23))
