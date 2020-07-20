library(PreProcess)
library(installr)
updateR()
?load()
load(AlexAfy, envir = parent.frame(n=1), verbose = FALSE)
AffyNew<-log2(AffyData[["GSE5281_series_matrix.txt.gz"]]@assayData[["exprs"]])
library(quantro)

library(data.table)
HeadAffy<-read.csv("C:\\Users\\Alex\\Desktop\\REVISED ANALYSES\\GSE5281\\Header.csv")
Affynww<-setnames(AffyNeww,colnames(AffyNeww),colnames(header))

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("quantro")

?getDTthreads
AffyHead<- read.csv("C:\\Users\\Alex\\Desktop\\REVISED ANALYSES\\GSE5281\\head.csv")
AffyHead$X.Sample_title<-NULL
View(AffyHead)
AffyNeww<-AlexAfy
colnames(AffyNeww)<- colnames(AffyHead)
View(AffyNeww)


dev.off()

********************************************************************
  NEw Work
*************************
  log2Gse5281<-log2(AlexAfy)

View(lo2GSE1)<- log2(AlexAfy)
controlss<- c(colnames(log2Gse5281)[1:74])

affectedss<- c(colnames(log2Gse5281)[75:161])
View(log2Gse5281)

colnames(lo2GSE1)[1:13]<-c("ECcontrol")
colnames(lo2GSE1)[14:26]<- c("HIPcontrol")
colnames(lo2GSE1)[27:38]<- c("MTGcontrol")
colnames(lo2GSE1)[39:51]<- c("PCcontrol")
colnames(lo2GSE1)[52:62]<-c("SFGcontrol")
colnames(lo2GSE1)[63:74]<- c("VCXcontrol")

colnames(lo2GSE1)[75:84]<- c("ECaffected")
colnames(lo2GSE1)[85:94]<- c("HIPaffected")
colnames(lo2GSE1)[95:111]<- c("MTGaffected")
colnames(lo2GSE1)[112:120]<- c("PCaffected")
colnames(lo2GSE1)[121:144]<- c("SFGaffected")
colnames(lo2GSE1)[145:161]<- c("Vcxaffected")


ECcontrol<- (lo2GSE1)[1:13])
View(ECcontrol)
colnames(ECcontrol)<-c("ECControl")
colnames(ECcontrol)<-
HIPcontrol<-c((lo2GSE1)[14:26])
MTGcontrol<-c(colnames(lo2GSE1)[27:38])
PCcontrol<- c(colnames(lo2GSE1)[39:51])
SFGcontrol<-c(colnames(lo2GSE1)[52:62])
vcxcontrol<-c(colnames(lo2GSE1)[63:74])

ECaffected<-c(colnames(lo2GSE1)[75:84])
HIPaffected<-c(colnames(lo2GSE1)[85:94])
MTGaffected<- c(colnames(lo2GSE1)[95:111])
PCaffected<- c(colnames(lo2GSE1)[112:120])
SFGaffected<-c(colnames(lo2GSE1)[121:144])
Vcxaffected<- c(colnames(lo2GSE1)[145:161])

Allx<- (ECcontrol,HIPcontrol,MTGcontrol,PCcontrol,SFGcontrol,vcxcontrol,
         ECaffected,HIPaffected,MTGaffected,PCaffected,SFGaffected,Vcxaffected)

library(dplyr)
library(tidyr)
splittered<- separate(lo2GSE1,col = [1:13],[14:26], [27:38],[39:51], [52:62],[63:74], 
                      into= "ECcontrol","HIPcontrol","MTGcontrol","PCcontrol","SFGcontrol","VCXcontrol",
"ECaffected","HIPaffected","MTGaffected","PCaffected","SFGaffected","Vcxaffected"))

fff<- c("ECcontrol","HIPcontrol","MTGcontrol","PCcontrol","SFGcontrol","VCXcontrol",
        "ECaffected","HIPaffected","MTGaffected","PCaffected","SFGaffected","Vcxaffected")

tLog2<- t(lo2GSE1)
rownames(tLog2)<-colnames(lo2GSE1)
tlog2s<-split(tLog2,f=("ECcontrol","HIPcontrol","MTGcontrol","PCcontrol","SFGcontrol","VCXcontrol",
                       "ECaffected","HIPaffected","MTGaffected","PCaffected","SFGaffected","Vcxaffected" ))
View(tLog2)

Allss<- c(controlss,affectedss)
library(quantro)

All

QData210<- quantro(AlexAfy, 
                groupFactor = Allss,
                B=100, useMedianNormalized = TRUE, verbose = TRUE)

Allzz<-AffyData[["GSE5281_series_matrix.txt.gz"]]@phenoData@data[["description.1"]]

QPlot<- quantroPlot(QData10)

#Before_Normalization

DensityPlot5281<- matdensity(Dafy3, groupFactor = Allzz, xlab = "Log2(Signal) ", ylab = "density",
           main = "Signals", brewer.n = 4, brewer.name = "Dark2")
legend('right', c("controlss", "affected"), col = c(1, 2), lty = 1, lwd = 3)

BoxPlot5281<-matboxplot(Dafy3, groupFactor = Allzz, xaxt = "n", 
            main = "Box-Plot for GSE5281",xlab= "Samples", ylab="log2(Signal)")


#AFter normalization

DensityPlotNorm5281<- matdensity(QuantNorm5281, groupFactor = Allzz, xlab = "Log2(Signal) ", ylab = "density",
                             main = "Signals", brewer.n = 4, brewer.name = "Dark2")
legend('right', c("controlss", "affected"), col = c(1, 2), lty = 1, lwd = 3)

BoxPlotNorm5281<-matboxplot(QuantNorm5281, groupFactor = Allzz, xaxt = "n", 
                        main = "Box-Plot for GSE5281",xlab= "Samples", ylab="log2(Signal)")

#View(QPlot)
#View(QData10@quantroStatPerm)
#??tidyverse

===================================================================
GSE5281 WORKS
===================================================================
#layout
##  ?par()
#layout(matrix(c(1,1,0,2), 2, 2, byrow = TRUE))
par(mfrow = c(2,1))

plot(1:10)
dev.new(width=6, height=4)
plot(1:20)


#log2Gse5281<-log2(AlexAfy)


#controlss<- c(colnames(log2Gse5281)[1:74])

#affectedss<- c(colnames(log2Gse5281)[75:161])
#View(log2Gse5281)
 

#QData5281<- quantro(log2Gse5281, 
#          groupFactor =Allss,
#          B=100, useMedianNormalized = TRUE, verbose = TRUE)

#DensityPlot5281<-matdensity(log2Gse5281, groupFactor = Allss, xlab = "Log2(Signal) ", ylab = "Density",
#                main = "Density plot GSE5281", 
#                brewer.n = 4, brewer.name = "Dark2")
#legend('topright', c("Controlss", "Affected"),bg="lightblue", col = c(1, 2), lty = 1, lwd = 3, cex = 0.75)

#BoxPlot5281<-matboxplot(log2Gse5281, groupFactor = Allss, xaxt = "n", 
#                       main = "Box-Plot for GSE5281",xlab= "Samples", ylab="log2(Signal)")



#GS553<-Alex2
#colnames(GS553)<- colnames(GSE)


#QData553<- quantro(Alex2, 
 #                 groupFactor =GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["source_name_ch1"]],
  #                B=100, useMedianNormalized = TRUE, verbose = TRUE)

#QData553@MSbetween
#QData553@MSwithin

#Densityplot553<-matdensity(Alex2, groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]],
 #                          xlab = "Log2(Signal) ", ylab = "density",
#           main = "Signals", brewer.n = 4, brewer.name = "Dark2")
#legend('topright', c("controlss", "affected"), col = c(1, 2), lty = 1, lwd = 3)

#Boxplot553<-matboxplot(Alex2, groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["source_name_ch1"]], xaxt = "n", 
 #          main = "Box-Plot for GSE118553",xlab= "Samples", ylab="log2(Signal)")
___________________________________
***********************************************************************
UniGSE553<- GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]]
Uniq553<- unique(UniGSE553, incomparables=FALSE)
lev553<- levels(Uniq553)
QData2553N<- quantro(dataDB4, 
 #                  groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]],
                   B=100, useMedianNormalized = TRUE, verbose = TRUE)



#Before Normalization
QData553NN<- matdensity(D3B553, 
                        groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.3"]],
                        xlab = "Log2(Signal) ", ylab = "density",
                        main = "Density Plot for GSE118553", brewer.n = 4, brewer.name = "Dark2")
legend(legend = Uniq553, 'topright', col =Uniq553, bg="lightblue", lty = 1, lwd = 3)

QboxN<- matboxplot(DBG553, 
                    groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.3"]], 
                    xaxt = "n",
                    main = "Box-Plot for GSE118553",xlab= "Samples", ylab="Log2(Signal)")


#Before Normalization

BoxPlotN553<- matboxplot(DBN553, 
           groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.3"]], 
           xaxt = "n",
           main = "Box-Plot for GSE118553",xlab= "Samples", ylab="Log2(Signal)")



#After Normalization
BoxPlotQN553<- matboxplot(QuantNorm553, 
                         groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.3"]], 
                         xaxt = "n",
                         main = "Box-Plot for GSE118553",xlab= "Samples", ylab="Log2(Signal)")

library(quantro)
library(preprocessCore)

Norm553<-normalize.quantiles(MatrixDB553G, copy = TRUE)

QData2553@MSbetween
QData2553@MSwithin
Densityplot2553<-matdensity(dataDB4, 
      groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]],
      xlab = "Log2(Signal) ", ylab = "density",
      main = "Density Plot for GSE118553", brewer.n = 4, brewer.name = "Dark2")
legend(legend = Uniq553, 'topright', col =Uniq553, bg="lightblue", lty = 1, lwd = 3)

Boxplot2553N<-matboxplot(dataDB4, 
              groupFactor = GSE118553[["GSE118553_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]], 
              xaxt = "n",
              main = "Box-Plot for GSE118553",xlab= "Samples", ylab="Log2(Signal)")



?ggplot

==============================================================
  GSE131617 CECKK
============================================
  
uni3617f<-unique(gse3617F, incomparables = FALSE)
  gse3617F<- GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]]
QData617<- quantro(GEData2, 
          groupFactor =GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]],
          B=100, useMedianNormalized = TRUE, verbose = TRUE)


#Before Normalization

Densityplot617<-matdensity(DBN617, 
                            groupFactor = GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]],
                            xlab = "Log2(Signal)", ylab = "Density",
                            main = "Density plot for GSE131617", brewer.n = 4, brewer.name = "Dark2")
legend(legend = uni3617f, col= uni3617f,'topright',
       lty = 1, lwd = 3, bg='lightblue', cex=0.8)

BoxplotN617<-matboxplot(Norm617, 
                        groupFactor = GSE617@phenoData@data$characteristics_ch1.4, 
                        xaxt = "n",
                        main = "New Box-Plot for GSE131617",xlab= "Samples", ylab="Log2(Signal)")
legend(legend = uni3617f, col= uni3617f,"topright", title="BRAAK stages", 
       text.font = 2,
       lty = 1, lwd = 4, bg="light", cex=0.8)



#After Normaization

Densityplot617<-matdensity(QuantNorm617, 
                           groupFactor = GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]],
                           xlab = "Log2(Signal)", ylab = "Density",
                           main = "Density plot for GSE131617", brewer.n = 4, brewer.name = "Dark2")
legend(legend = uni3617f, col= uni3617f,'topright',
       lty = 1, lwd = 3, bg='lightblue', cex=0.8)

Boxplot617<-matboxplot(QuantNorm617, 
                       groupFactor = GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@phenoData@data[["characteristics_ch1.4"]], 
                       xaxt = "n",
                       main = "Box-Plot for GSE131617",xlab= "Samples", ylab="Log2(Signal)")
legend(legend = uni3617f, col= uni3617f,"topright", title="BRAAK stages", 
       text.font = 2,
       lty = 1, lwd = 4, bg="light", cex=0.8)










QData617@MSbetween
  
QData617@MSwithin 




if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("illuminaHumanv1.db")
library(illuminaHumanv1.db)


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("hgu95av2.db")

library(hgu95av2.db)

selectedEntrezIds <- unlist(mget(as.character(GeneIDs),hgu95av2ACCNUM))

GenIDs<- data.frame(unlist(mget(x = as.character(GeneIDs),envir = illuminaHumanv1SYMBOL)))
?select
x <- hgu133a2ACCNUM
mapped_probes <- mappedkeys(x)
xx <- as.list(x[mapped_probes])


View(Boxplot617[["stats"]])
View(Boxplot2553[["stats"]])

===================================================================
 
?write.csv(log2Gse5281, file = "log2.rdata")

write.csv(lo2GSE1, file = "lo2.rdata", append = FALSE, quote = TRUE, sep = " ",
            eol = "\n", na = "NA", dec = ".", row.names = TRUE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")

write.csv(Alex2, file = "gse118553.rdata")
saveRDS()
saveRDS(log2Gse5281, file = "AfyOut", ascii = FALSE, version = NULL,
        compress = TRUE, refhook = NULL)






normAffy<-??normalize.quantiles(AffyNew,copy=TRUE)
library(limma)

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("preprocessCore")
library(preprocessCore)
NormData<- normalize.quantiles(AffyNew, copy = TRUE)
row.names(NormData)<-row.names(AffyNew)
colnames(NormData)<- colnames(AffyNew)
rank
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("quantro")

load()
?filter
group_by()
library(quantro)
?quantro
QData<- quantro(AffyData[["GSE5281_series_matrix.txt.gz"]], 
                groupFactor = AffyData[["GSE5281_series_matrix.txt.gz"]]@phenoData@data[["description.1"]],
                B=1, useMedianNormalized = TRUE, verbose = TRUE)
library(tidyverse)
checkdata<- ggplot(data=AffyNew, aes(x=))