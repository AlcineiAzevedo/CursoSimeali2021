remove(list=ls())
setwd("C:/Users/AlcineiAzevedo/Desktop/Alcinei/Simeali")
D=read.table("ex2.txt",head=TRUE)
rownames(D)=D[,1]
D=D[,-1]
library(MultivariateAnalysis)
ComponentesPrincipais(D)

?ComponentesPrincipais.Misto
data("Dados.Misto")

NomeTrat=paste("Trat",1:nrow(Dados.Misto),sep="_")
ComponentesPrincipais.Misto(Dados.Misto,NomeTrat = NomeTrat)
?VariaveisCanonicas

#Delineamento inteiramente casualizado (DIC)
data("Dados.DIC")
VariaveisCanonicas(Dados.DIC,1)
