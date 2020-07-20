
library(Biobase)
library(GEOquery)
library (limma)

library (illuminaHumanv1.db)
library(hgu95av2.db)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("illuminaHumanv1.db")

=====================================================
  
  View (Data) <- getGEO("GSE118553")

View (eset)<-exprs(Data[["GSE118553_series_matrix.txt.gz"]])
GeneInf<- Data[["GSE118553_series_matrix.txt.gz"]]@featureData
Genes<- GeneInf@data$Symbol
MyDataX<- as.data.frame(Data)

ExData <- eset[which(!is.na(GeneInf@data$Symbol)), ]

Symbol <- GeneInf@data$Symbol[!is.na(GeneInf@data$Symbol)]


IQR.f <- function(x) {
  
  x <- as.data.frame(x)
  
  IQRS <- apply(x,1,IQR,na.rm=T)
  
  temp.index <- which.max(IQRS)
  
  return(x[temp.index,])
  
}

D <- split(as.data.frame(ExData), as.factor(Genes))

data3 <- t(sapply(D, IQR.f))

data4 <- t(apply(data3, 1, unlist))

rownames(data4) <- names(D)

colnames(data4) <- colnames(ExData)



Alex1 <- data4

save(Alex1, file = "Alex1.csv")


limmaUsersGuide(view = TRUE)



Affymetrix 
============================================================================
  library(Biobase)

library(hgu95av2.db)

library(xlsx)

#########################

IQR.f <- function(x) {
  
  x <- as.data.frame(x)
  
  IQRS <- apply(x,1,IQR,na.rm=T)
  
  temp.index <- which.max(IQRS)
  
  return(x[temp.index,])
  
}

#########################

AffyData<- getGEO("GSE5281")

AffyEX<- AffyData[["GSE5281_series_matrix.txt.gz"]]
#probe_names<- rownames(exprs(AffyData[["GSE5281_series_matrix.txt.gz"]]))

AfyExdata<-exprs(AffyData[["GSE5281_series_matrix.txt.gz"]])
AfyExDataT<- log2(AfyExdata)


#genename<- AffyData[["GSE5281_series_matrix.txt.gz"]]@featureData@data

dictionary <- AffyData[["GSE5281_series_matrix.txt.gz"]]@featureData@data[, c('ID', 'Gene Symbol')] 

UniqueGenes5281<- unique(as.character(dictionary$`Gene Symbol`))

----
#ex2 <- Exdata[match(probe_names, dictionary$ID), ] 
#rownames(ex2) = dictionary$`Gene Symbol`

---
#GeneIDs<- dictionary[match(GeneUiq, dictionary$Gene Symbol)]
#dataA<- Exdata[match(dictionary$ID, row.names(Exdata)), ]

#SymbolA<-dictionary)[match(dictionary$`Gene Symbol`, names(mapped))]

#data2<- Exdata[dictionary$ID, ), ]

#ExpresData<-as.data.frame(Exxdata[["exprs"]])
--


DAfy<- split(as.data.frame(AfyExDataT), as.factor(UniqueGenes5281))

Dafy2 <- t(sapply(DAfy, IQR.f))


Dafy3<- t(apply(Dafy2, 1, unlist))


QuantNorm5281<-normalizeQuantiles(Dafy3, ties = TRUE)

#rownames(data4) <- names(DA)

#colnames(data4) <- colnames(exprs(AffyData[["GSE5281_series_matrix.txt.gz"]]))

#AlexAfy<- data4
#AlexAfy2<-as.data.frame(AlexAfy)



#library(tidyverse)
#load(AlexAfy2)

#We're now working on second dataset GSE118553 :)

GSE118553<- getGEO("GSE118553") #This is to download data from NCBI 
#GSE118553 
#probe_names_new<- rownames(exprs(GSE118553[["GSE118553_series_matrix.txt.gz"]])) 

#UNID<-unique(GSE118553[["GSE118553_series_matrix.txt.gz"]]@featureData@data[["Protein_Product"]])

GEData118553<- exprs(GSE118553[["GSE118553_series_matrix.txt.gz"]])
Dictionary2<- GSE118553[["GSE118553_series_matrix.txt.gz"]]@featureData@data[c('ID', 'Symbol')]  
UniqueGenes553<- unique(as.character(DictionaryG$Symbol))


D1B553<- split(as.data.frame(GEData118553), as.factor(UniqueGenes553))

D2B553 <- t(sapply(DB553, IQR.f))

DBN553<- t(apply(D2B553, 1, unlist))

View(D3B553)


QuantNorm553<-normalizeQuantiles(DBN553, ties = TRUE)

#rownames(DBG553) <- names(dataDB553)

#colnames(dataDB4) <- colnames(GEData)

#write.csv(dataDB4, "GSE118553N.rdata")




#Alex2 <- data44
#View(Alex2)

#save(HUMAC, file = "HUMAC.rdata")

#=============================================================================
  View(GSE131617)<- getGEO("GSE131617")
View(GSE131617) 
library(illuminaHumanv1.db)

#GSE1312<-GSE131617[["GSE131617-GPL5188_series_matrix.txt.gz"]]
#q<- illuminaHumanv1ENTREZID
#mapped_probes1<- mappedkeys(q)
#qq<- as.list(mapped_probes1)

GEData617<- exprs(GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]])

#probe_names<- row.names(ExDa3)  
#View(probe_names)

#GEData2<- exprs(GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]])

#DictionaryG<- GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@featureData@ [c('ID', 'Symbol')]  

#z <-as.list(illuminaHumanv1ALIAS2PROBE)
#z[1:2]
#mapped_probes <- mappedkeys(z)
#zz <- as.character(z[mapped_probes])
#inter_gene<- intersect(names(zz), probe_names)


#yy<- as.character(yy)
#exx2 <- GEData[match(probe_names, DictionaryG$ID),] 
#rownames(exx2) = DictionaryG$Symbol

#mapped<- as.character(x[mapped_probes])
#symbol<- mapped_probes[match(probe_names, names(mapped))]

Unique617<- unique(as.character(GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@phenoData@data[["source_name_ch1"]]))

Probes617<- unique(as.character(GSE131617[["GSE131617-GPL5175_series_matrix.txt.gz"]]@featureData@data[["ID"]]))
#UniqGen<- unique(as.character(DictionaryG$Symbol))

D1B617<- split(as.data.frame(GEData617), as.factor(Probes617))

D2B617 <- t(sapply(D1B617, IQR.f))

DBN617<- t(apply(D2B617, 1, unlist))

QuantNorm617<-normalizeQuantiles(DBN617, ties = TRUE)




<-illuminaHumanv1SYMBOL
mapped_probes <- mappedkeys(y)
yy <- as.list(y[mapped_probes])
yy<- as.character(yy)
exx2 <- GEData[match(probe_names, DictionaryG$ID),] 
rownames(exx2) = DictionaryG$Symbol



DB <- split(as.data.frame(exx2), as.factor(yy))

data33 <- t(sapply(DB, IQR.f))

data44 <- t(apply(data33, 1, unlist))

rownames(data44) <- names(DB)

colnames(data44) <- colnames(GEData)



Alex2 <- data44
View(Alex2)
  
  
==============================----------------------------------------------


library(illuminaHumanv1.db)

ls("package:illuminaHumanv1.db")

y<-illuminaHumanv1SYMBOL
mapped_probes <- mappedkeys(y)
yy <- as.list(y[mapped_probes])
yy<- as.character(yy)
exx2 <- GEData[match(probe_names, DictionaryG$ID),] 
rownames(exx2) = DictionaryG$Symbol

ListG<- select(?illuminaHumanv1SYMBOL, 
       keys = probe_names, 
       columns=c("SYMBOL","REFGENE"))


geneinfo <- read.delim("anno.txt", header = TRUE, row.names = 1, na.string = "-")

data2 <- data[which(!is.na(geneinfo$GENE_Symbol)), ]

symbol <- geneinfo$GENE_Symbol[!is.na(geneinfo$GENE_Symbol)]





IQR.f <- function(x) {
  
  x <- as.data.frame(x)
  
  IQRS <- apply(x,1,IQR,na.rm=T)
  
  temp.index <- which.max(IQRS)
  
  return(x[temp.index,])
  
}



D <- split(as.data.frame(data2), as.factor(symbol))

data3 <- t(sapply(D, IQR.f))

data4 <- t(apply(data3, 1, unlist))

rownames(data4) <- names(D)

colnames(data4) <- colnames(data)



HUMAC <- data4

save(HUMAC, file = "HUMAC.rdata")






=============================================================================== 
genename <- (hgu95av2GENENAME[probe_names])

y<- Genes$`Gene Symbol`

y<-hgu95av2SYMBOL
mapped_probes <- mappedkeys(y)
yy<- as.character(y[mapped_probes])

if(length(yy) > 0) {
  yy[1:5]
}
intersect_gene<- intersect.Vector(names(yy), probe_names)

View (data2)<- exprs(AffyData[["GSE5281_series_matrix.txt.gz"]])[match(names(yy), probe_names), ]

symbol<- mapped[match(intersect_gene, names(mapped))]



x <- hgu95av2SYMBOL

mapped_probes <- mappedkeys(x)

mapped<- as.character(x[mapped_probes])

intersect_gene<- intersect(names(mapped), probe_names)

??.checkkeys

data2<- exprs(Huang)[match(intersect_gene, probe_names), ]

symbol<- mapped[match(intersect_gene, names(mapped))]



D<- split(as.data.frame(data2), as.factor(symbol))

data3 <- t(sapply(D, IQR.f))

data4 <- t(apply(data3, 1, unlist))

rownames(data4) <- names(D)

colnames(data4) <- colnames(exprs(Huang))



phenoData(Huang)$Sample



Huang<- data4

save(Huang, file = "Huang.rdata") 
