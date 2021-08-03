remove(list=ls())
setwd("C:/Users/AlcineiAzevedo/Desktop/Alcinei/Simeali")
D=read.table("ex1.txt",head=TRUE)
rownames(D)=D[,1]
D=D[,-1]

#Padronizacao dos dados
Dp=scale(D)

apply(Dp,2,mean)
apply(Dp,2,sd)
apply(Dp,2,var)

#Obtencao de autovalores e autovetores
AV=eigen(var(Dp))
AVL=AV$values
AVT=AV$vectors

100*AVL/sum(AVL)
cumsum(100*AVL/sum(AVL))

#Obtencao dos componentes principais
CP=Dp%*%AVT
CP

#Obtendo o grafico
plot(CP[,1],CP[,2],xlab="CP1",ylab="CP2",main="Componentes principais",col=0)
text(CP[,1],CP[,2],rownames(D))

#Obtendo a correlacao dos dados padronizados com os CPs
cor(Dp,CP[,1:2])



####################################################################
###################################################################
CPb=princomp(Dp)
plot(CPb)
biplot(CPb)


#####################################################################
####################################################################
# install.packages("MultivariateAnalysis")
library(MultivariateAnalysis)
?ComponentesPrincipais()
ComponentesPrincipais(D,padronizar = TRUE)
