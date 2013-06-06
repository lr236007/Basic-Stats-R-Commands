setwd("/Users/Leslie/Desktop/")
rm(list=ls())
items<-read.csv('PAMI_DIF_OTL_PAPER.csv',header=TRUE)
ls()
mydata<-data.frame(items)
ls()
mydata
attach(mydata)
ls()
names(mydata)
help(difR)w
??difR

library(ltm)
help(ltm)
descript(mydata)
summary(mydata)
mydata
dim(mydata)
#help(grm)
#grm estimates the item parameters for the GRM model - LETTERS
GRM.L <- grm(mydata[c(43,44,45,46,47,48,49,50,51,52,53,54)])
#without recoding
GRM.L$patterns
class(GRM.L)
summary(GRM.L)
names(GRM.L)
GRM.L$coefficients
Letter.coeff<-as.data.frame(GRM.L$coefficients)
Letter.coeff
write.csv(Letter.coeff,"Letter.parameters.csv")


#plot info from the 'ltm.pdf'
#plot(x, type = c("ICC", "IIC", "OCCu", "OCCl"), items = NULL,
#category = NULL, zrange = c(-3.8, 3.8),
#z = seq(zrange[1], zrange[2], length = 100), annot,
#labels = NULL, legend = FALSE, cx = "top", cy = NULL, ncol = 1,
#bty = "n", col = palette(), lty = 1, pch, xlab, ylab, main,
#sub = NULL, cex = par("cex"), cex.lab = par("cex.lab"),
#cex.main = par("cex.main"), cex.sub = par("cex.sub"),
#cex.axis = par("cex.axis"), plot = TRUE, ...)

#the operating characteristic curve for an item
#I'm not sure of the OCCl v. OCCu difference, but
#OCCl seems to be 'reversed'
#IIC is the item characteristic (or category response) curves
par(mfrow=c(4,3))
plot.grm(GRM.L,type="OCCu",items=1)
plot.grm(GRM.L,type="ICC",items=1)


plot.grm(GRM.L,type="OCCu",items=2)
plot.grm(GRM.L,type="ICC",items=2)

plot.grm(GRM.L,type="OCCu",items=3)
plot.grm(GRM.L,type="ICC",items=3)

plot.grm(GRM.L,type="OCCu",items=4)
plot.grm(GRM.L,type="ICC",items=4)

plot.grm(GRM.L,type="OCCu",items=5)
plot.grm(GRM.L,type="ICC",items=5)


plot.grm(GRM.L,type="OCCu",items=6)
plot.grm(GRM.L,type="ICC",items=6)

plot.grm(GRM.L,type="OCCu",items=7)
plot.grm(GRM.L,type="ICC",items=7)

plot.grm(GRM.L,type="OCCu",items=8)
plot.grm(GRM.L,type="ICC",items=8)

plot.grm(GRM.L,type="OCCu",items=9)
plot.grm(GRM.L,type="ICC",items=9)

plot.grm(GRM.L,type="OCCu",items=10)
plot.grm(GRM.L,type="ICC",items=10)

plot.grm(GRM.L,type="OCCu",items=11)
plot.grm(GRM.L,type="ICC",items=11)

plot.grm(GRM.L,type="OCCu",items=12)
plot.grm(GRM.L,type="ICC",items=12)

#do up to here, and repeat for other items
#grm estimates the item parameters for the GRM model - WRITING
GRM.W <- grm(mydata[c(57,58,59,63,65,67)])
GRM.W
GRM.W$patterns
class(GRM.W)
summary(GRM.W)
GRM.W$coefficients
GRM.W$Dscrmn
Writing.coeff<-as.data.frame(GRM.W$coefficients)
Writing.coeff
write.csv(Writing.coeff,"Writing.parameters.csv")


par(mfrow=c(4,2))
plot.grm(GRM.W,type="OCCu",items=1)
plot.grm(GRM.W,type="ICC",items=1)


plot.grm(GRM.W,type="OCCu",items=2)
plot.grm(GRM.W,type="ICC",items=2)

plot.grm(GRM.W,type="OCCu",items=3)
plot.grm(GRM.W,type="ICC",items=3)

plot.grm(GRM.W,type="OCCu",items=4)
plot.grm(GRM.W,type="ICC",items=4)

plot.grm(GRM.W,type="OCCu",items=5)
plot.grm(GRM.W,type="ICC",items=5)


plot.grm(GRM.W,type="OCCu",items=6)
plot.grm(GRM.W,type="ICC",items=6)



#grm estimates the item parameters for the GRM model - CONCEPTS OF PRINT
GRM.C <- grm(mydata[c(86,87)])
GRM.C
GRM.C$patterns
class(GRM.C)
summary(GRM.C)
GRM.C$coefficients
GRM.C$Dscrmn
PConcepts.coeff<-as.data.frame(GRM.C$coefficients)
PConcepts.coeff
write.csv(PConcepts.coeff,"PConcepts.parameters.csv")


#plot info from the 'ltm.pdf'
#plot(x, type = c("ICC", "IIC", "OCCu", "OCCl"), items = NULL,
#category = NULL, zrange = c(-3.8, 3.8),
#z = seq(zrange[1], zrange[2], length = 100), annot,
#labels = NULL, legend = FALSE, cx = "top", cy = NULL, ncol = 1,
#bty = "n", col = palette(), lty = 1, pch, xlab, ylab, main,
#sub = NULL, cex = par("cex"), cex.lab = par("cex.lab"),
#cex.main = par("cex.main"), cex.sub = par("cex.sub"),
#cex.axis = par("cex.axis"), plot = TRUE, ...)

#the operating characteristic curve for an item
#I'm not sure of the OCCl v. OCCu difference, but
#OCCl seems to be 'reversed'
#IIC is the item characteristic (or category response) curves
par(mfrow=c(1,2))
plot.grm(GRM.C,type="OCCu",items=1)
plot.grm(GRM.C,type="ICC",items=1)


plot.grm(GRM.C,type="OCCu",items=2)
plot.grm(GRM.C,type="ICC",items=2)

#item information
par(mfrow=c(3,4))
plot.grm(GRM.L,type="IIC",items=1,label="O")
plot.grm(GRM.L,type="IIC",items=2,label="M")
plot.grm(GRM.L,type="IIC",items=3,label="E")
plot.grm(GRM.L,type="IIC",items=4,label="B")
plot.grm(GRM.L,type="IIC",items=5,label="A")
plot.grm(GRM.L,type="IIC",items=6,label="S")
plot.grm(GRM.L,type="IIC",items=7,label="P")
plot.grm(GRM.L,type="IIC",items=8,label="N")
plot.grm(GRM.L,type="IIC",items=9,label="U")
plot.grm(GRM.L,type="IIC",items=10,label="C")
plot.grm(GRM.L,type="IIC",items=11,label="I")
plot.grm(GRM.L,type="IIC",items=12,label="T")
par(mfrow=c(3,2))
plot.grm(GRM.W,type="IIC",items=1,xlab="Name writing")
plot.grm(GRM.W,type="IIC",items=2,xlab="First free choice word")
plot.grm(GRM.W,type="IIC",items=3,xlab="Second free choice word")
plot.grm(GRM.W,type="IIC",items=4,xlab="First dictation word")
plot.grm(GRM.W,type="IIC",items=5,xlab="Second dictation word")
plot.grm(GRM.W,type="IIC",items=6,xlab="Third dictation word")

#test information
plot.grm(GRM.L,type="IIC",items=0,xlab="Letter recognition")
plot.grm(GRM.W,type="IIC",items=0,xlab="Writing")

#person abilities LETTERS
#help(factor.scores,ltm)
Thetas.L <- factor.scores(GRM.L,method="EAP")
Thetas.L

write.csv(Thetas.L$score.da,"ThetasL.csv")
Thetas.L$score.dat
Thetas.L$score.dat$z1
summary(Thetas.L$score.dat)

#person abilities WORDS
#help(factor.scores,ltm)
Thetas.W <- factor.scores(GRM.W,method="EAP")
Thetas.W
Thetas.W$score.dat
Thetas.W$score.dat$z1
write.csv(Thetas.W$score.da,"ThetasW.csv")
summary(Thetas.W$score.dat)

#grm estimates the item parameters for the GRM model - READING
library(irtoys)
help(irtoys)
data(mydata)
PAR.R  <- est((mydata[c(32,33,34,35,36,37,38,39,40)]), model="1PL", "rasch" = TRUE, engine="ltm")
PAR.R
names(PAR.R)
class(PAR.R)
write.csv(PAR.R,"Reading.coeff.csv")
th.mle <- mlebme(resp=(mydata[c(32,33,34,35,36,37,38,39,40)]), ip=PAR.R)
th.mle
names(th.mle)
Thetas.R<-as.data.frame(th.mle)
write.csv(Thetas.R,"ThetasR.csv")
summary(PAR.R)



# plot IRF for all items in red, label with item number

par(mfrow=c(5,2))
plot(irf(PAR.R[c(1),]), co="red", label=TRUE)
plot(irf(PAR.R[c(2),]), co="red", label=TRUE)
plot(irf(PAR.R[c(3),]), co="red", label=TRUE)
plot(irf(PAR.R[c(4),]), co="red", label=TRUE)
plot(irf(PAR.R[c(5),]), co="red", label=TRUE)
plot(irf(PAR.R[c(6),]), co="red", label=TRUE)
plot(irf(PAR.R[c(7),]), co="red", label=TRUE)
plot(irf(PAR.R[c(8),]), co="red", label=TRUE)
plot(irf(PAR.R[c(9),]), co="red", label=TRUE) 


#PLOT TEST INFORMATION READ
plot(tif(PAR.R))

help(irtoys)

library(difR)
help(difR)
 PAR.RDIF<-itemPar1PL((mydata[c(32,33,34,35,36,37,38,39,40)]))
 PAR.RDIF
 #ITEM PARAMETERS CONCEPTS OF PRINT
 PAR.RDIF.C<-itemPar1PL((mydata[c(29,30,31,41,42,43,44,46,47,48,49)]))
 PAR.RDIF.C
 class(PAR.RDIF.C)
 write.csv(PAR.RDIF.C,"Concepts.param.csv")

#DIF FOR DIFFERENT COMBINATIONS- READING ITEMS

names(mydata)
DIF.DATA<-(mydata[c(32,33,34,35,36,37,38,39,40,2,4,70,71,72,73,74,75,5)])
DIF.DATA
#DIF BY SEX
DIF.READ.S<-difMH(DIF.DATA,10, 1 , MHstat="MHChisq") 
DIF.READ.S
names(DIF.READ.S)
#DIF BY PRESCHOOL
DIF.READ.P<-difMH(DIF.DATA,11, 1 , MHstat="MHChisq") 
DIF.READ.P

#DIF FOR area

DIF.READ.A<-difMH(DIF.DATA,12, 1 , MHstat="MHChisq") 
DIF.READ.A

#DIF FOR MODALIDAD

DIF.READ.M<-difMH(DIF.DATA,13, 1 , MHstat="MHChisq") 
DIF.READ.M


#DIF BY FIRST LANGUAGE
DIF.READ.F<-difMH(DIF.DATA,14, 1 , MHstat="MHChisq") 
DIF.READ.F

#DIF BY ONEWORD GROUP THAT WRITES AT LEAST ONE WORD IN SPANISH AND REPORTS SPEAKING SPANISH

DIF.READ.SPANISH<-difMH(DIF.DATA,16, 1 , MHstat="MHChisq") 
DIF.READ.SPANISH


#DIF BY ONEWORD GROUP THAT WRITES AT LEAST ONE WORD IN SPANISH AND DOES NOT REPORT FIRST LANGUAGE "WORKS NOW!, 1 WAS ONEWORD=1 OR 5 AND FIRST LANG = 1 OR MISSING"
DIF.READ.5<-difMH(DIF.DATA,15, 5 , MHstat="MHChisq") 
DIF.READ.5

#DIF BY kids that report having a textbook

DIF.READ.BOOK<-difMH(DIF.DATA,17, 1 , MHstat="MHChisq") 
DIF.READ.BOOK

#DIF BY REPEATING FIRST GRADE

DIF.READ.REPEAT<-difMH(DIF.DATA,18, 1 , MHstat="MHChisq") 
DIF.READ.REPEAT



#DIF FOR DIFFERENT COMBINATIONS- CONCEPTS OF PRINT ITEMS
library(difR)
names(mydata)
DIF.DATA<-(mydata[c(29,30,31,41,42,43,44,46,47,48,49,2,4,70,71,72,73,74,75,5)])
DIF.DATA
#DIF BY SEX
DIF.READ.S<-difMH(DIF.DATA,12, 1 , MHstat="MHChisq") 
DIF.READ.S
names(DIF.READ.S)
#DIF BY PRESCHOOL
DIF.READ.P<-difMH(DIF.DATA,13, 1 , MHstat="MHChisq") 
DIF.READ.P

#DIF FOR area

DIF.READ.A<-difMH(DIF.DATA,14, 1 , MHstat="MHChisq") 
DIF.READ.A

#DIF FOR MODALIDAD

DIF.READ.M<-difMH(DIF.DATA,15, 1 , MHstat="MHChisq") 
DIF.READ.M


#DIF BY FIRST LANGUAGE
DIF.READ.F<-difMH(DIF.DATA,16, 1 , MHstat="MHChisq") 
DIF.READ.F

#DIF BY ONEWORD GROUP THAT WRITES AT LEAST ONE WORD IN SPANISH AND REPORTS SPEAKING SPANISH

DIF.READ.SPANISH<-difMH(DIF.DATA,18, 1 , MHstat="MHChisq") 
DIF.READ.SPANISH


#DIF BY ONEWORD GROUP THAT WRITES AT LEAST ONE WORD IN SPANISH AND DOES NOT REPORT FIRST LANGUAGE "WORKS NOW!, 1 WAS ONEWORD=1 OR 5 AND FIRST LANG = 1 OR MISSING"
DIF.READ.5<-difMH(DIF.DATA,17, 5 , MHstat="MHChisq") 
DIF.READ.5

#DIF BY kids that report having a textbook

DIF.READ.BOOK<-difMH(DIF.DATA,19, 1 , MHstat="MHChisq") 
DIF.READ.BOOK

#DIF BY REPEATING FIRST GRADE

DIF.READ.REPEAT<-difMH(DIF.DATA,20, 1 , MHstat="MHChisq") 
DIF.READ.REPEAT