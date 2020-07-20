
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("genefilter")

warnings()

?genefilter
?p.adjust()
?t.test
typeof(p.valuesEC)
AdjPvalu<- unlist(p.valuesEC)
adjuspvv<- p.adjust(AdjPvalu,"bonferroni")
write.csv(adjuspv, "ECpval.rdata")
write.csv(adjuspvv, "ECpval2.rdata")

EC_region<- unlist(EC_region)
adjpEC_region<- p.adjust(EC_region, "BH")
write.csv(adjpEC_region, "EC_region.rdata")



pvalFCadc<- unlist(PvaluesFC_AD_C)
adpvalADvC<- p.adjust(pvalFCadc, "BH")
write.csv(adpvalADvC, "adjPvFCadc.rdata")



EC_region<- unlist(EC_region)
adjpEC_region<- p.adjust(EC_region, "BH")
write.csv(adjpEC_region, "EC_region.rdata")

EC_AD_v_AsymAD<- unlist(EC_AD_v_AsymAD)
adjpvEC_AD_v_AsymAD<- p.adjust(EC_AD_v_AsymAD, "BH")
write.csv(adjpvEC_AD_v_AsymAD, "EC_AD_v_AsymADpval.rdata")

EC_AsymAD_v_C<- unlist(EC_AsymAD_v_C)
adjpvEC_AsymAD_v_C<- p.adjust(EC_AsymAD_v_C, "BH")
write.csv(adjpvEC_AsymAD_v_C, "EC_AsymAD_v_C.rdata")



#Temporal Cortex
TC_AD_v_C<- unlist(TC_AD_v_C)
adjpvTC_AD_v_C<- p.adjust(TC_AD_v_C, "BH")
write.csv(adjpvTC_AD_v_C, "TC_AD_v_C.rdata")

TC_AD_v_AsymAD<- unlist(TC_AD_v_AsymAD)
adjpTC_AD_v_AsymAD<- p.adjust(TC_AD_v_AsymAD, "BH")
write.csv(adjpTC_AD_v_AsymAD, "TC_AD_v_AsymAD.rdata")

TC_AsymAD_v_C<- unlist(TC_AsymAD_v_C)
adjpvTC_AsymAD_v_C<- p.adjust(TC_AsymAD_v_C, "BH")
write.csv(adjpvTC_AsymAD_v_C, "TC_AsymAD_v_C.rdata")


#Cerebellum
CB_AD_v_C<- unlist(CB_AD_v_C)
adjpvCB_AD_v_C<- p.adjust(CB_AD_v_C, "BH")
write.csv(adjpvCB_AD_v_C, "CB_AD_v_C.rdata")

CB_AD_v_AsymAD<- unlist(CB_AD_v_AsymAD)
adjpvCB_AD_v_AsymAD<- p.adjust(CB_AD_v_AsymAD, "BH")
write.csv(adjpvCB_AD_v_AsymAD, "CB_AD_v_AsymAD.rdata")

CB_AsymAD_v_C<- unlist(CB_AsymAD_v_C)
adjpvCB_AsymAD_v_C<- p.adjust(CB_AsymAD_v_C, "BH")
write.csv(adjpvCB_AsymAD_v_C, "CB_AsymAD_v_C.rdata")


#Frontal Cortex
FC_AD_v_C<- unlist(FC_AD_v_C)
adjpvFC_AD_C<- p.adjust(FC_AD_v_C, "BH")
write.csv(adjpvFC_AD_C, "FC_AD_C_pval.rdata")

FC_AD_v_AsymAD<- unlist(FC_AD_v_AsymAD)
adjpvFC_AD_v_AsymAD<- p.adjust(FC_AD_v_AsymAD, "BH")
write.csv(adjpvFC_AD_v_AsymAD, "FC_AD_v_AsymADpval.rdata")

FC_AsymAD_v_C<- unlist(FC_AsymAD_v_C)
adjpvFC_AsymAD_v_C<- p.adjust(FC_AsymAD_v_C, "BH")
write.csv(adjpvFC_AsymAD_v_C, "FC_AsymAD_v_C.rdata")

getwd()
=========================

setwd("C:\\Users\\Alex\\Desktop\\REVISED ANALYSES")
  
  #Temporal Cortex
TC_I.II_v_0<- unlist(TC_I.II_v_0)
adjpTC_I.II_v_0<- p.adjust(TC_I.II_v_0, "BH")
write.csv(adjpTC_I.II_v_0, "TC_I_II_v_0.rdata")

TC_III.IV_v_0<- unlist(TC_III.IV_v_0)
adjpTC_III.IV_v_0<- p.adjust(TC_III.IV_v_0, "BH")
write.csv(adjpTC_III.IV_v_0, "TC_III_IV_v_0.rdata")

TC_V.VI_v_0<- unlist(TC_V.VI_v_0)
adjpvTC_V.VI_v_0<- p.adjust(TC_V.VI_v_0, "BH")
write.csv(adjpvTC_V.VI_v_0, "TC_V_VI_v_0.rdata")


#Frontal Cortex
FC_I.II_v_0<- unlist(FC_I.II_v_0)
adjpFC_I.II_v_0<- p.adjust(FC_I.II_v_0, "BH")
write.csv(adjpFC_I.II_v_0, "FC_I.II_v_0.rdata")

FC_III.IV_v_0<- unlist(FC_III.IV_v_0)
adjpFC_III.IV_v_0<- p.adjust(FC_III.IV_v_0, "BH")
write.csv(adjpFC_III.IV_v_0, "FC_III.IV_v_0.rdata")

FC_V.VI_v_0<- unlist(FC_V.VI_v_0)
adjpFC_V.VI_v_0<- p.adjust(FC_V.VI_v_0, "BH")
write.csv(adjpFC_V.VI_v_0, "FC_V.VI_v_0.rdata")  
  

# ec_REGION
EC_I.II_v_0<- unlist(EC_I.II_v_0)
adjpEC_I.II_v_0<- p.adjust(EC_I.II_v_0, "BH")
write.csv(adjpEC_I.II_v_0, "EC_I.II_v_0.rdata")

EC_III.IV_v_0<- unlist(EC_III.IV_v_0)
adjpEC_III.IV_v_0<- p.adjust(EC_III.IV_v_0, "BH")
write.csv(adjpEC_III.IV_v_0, "EC_III.IV_v_0.rdata")

EC_V.VI_v_0<- unlist(EC_V.VI_v_0)
adjpEC_V.VI_v_0<- p.adjust(EC_V.VI_v_0, "BH")
write.csv(adjpEC_V.VI_v_0, "EC_V.VI_v_0.rdata")
 
  
  
write.csv(GEData2, "GSE131617.rdata")




pvalFC_AD_C<- unlist(PvaluesFC_AD_C)
adPvalFC_AD_C<- p.adjust(pvalFC_AD_C, "BH")
write.csv(adPvalFC_AD_C, "pvaluesFC_AD_C.rdata")

EC_region<- unlist(EC_region)
adjpEC_region<- p.adjust(EC_region, "BH")
write.csv(adjpEC_region, "EC_region.rdata")

HIP_region<- unlist(HIP_region)
adHIP_region<- p.adjust(HIP_region,"BH")
write.csv(adHIP_region, "HIP_region.rdata")

MTG_region<-unlist(MTG_region)
adjpMTG_region<- p.adjust(MTG_region, "BH")
write.csv(adjpMTG_region, "MTG_region.rdata")

PC_region<- unlist(PC_region)
adjPC_region<- p.adjust(PC_region, "BH")
write.csv(adjPC_region, "PC_region.rdata")

SFG_region<- unlist(SFG_region)
adSFG_region<- p.adjust(SFG_region, "BH")
write.csv(adSFG_region, "SFG_region.rdata")

VCX_region<- unlist(VCX_region)
adVCX_region<- p.adjust(VCX_region, "BH")
write.csv(adVCX_region, "VCX_region.rdata")

write.csv(Alex2, "Gse118553.rdata")


pvalFC_AD_C<- unlist(PvaluesFC_AD_C)
adPvalFC_AD_C<- p.adjust(pvalFC_AD_C, "BH")
write.csv(adPvalFC_AD_C, "pvaluesFC_AD_C.rdata")

??matrix.t.test

library(tidyverse)
typeof(EC_region)
?select()
install.packages("pi0", repos="http://R-Forge.R-project.org")
?pi0
select

AfyT<- split(as.data.frame(EC_region), as.factor(EC_region$...1))


Tafy<-t.test(AfyT, y = NULL,
             alternative = c("two.sided"),
             mu = 0, paired = FALSE, var.equal = FALSE,
             conf.level = 0.95, na.action()   )

names(t.test)
d=matrix(rnorm(60000),nc=6)
EC_regionV<- as.vector(EC_region)
?t.test()

Ttest5281<- t.test(x= EC_regionV[2:14], y= EC_regionV[15:24],
                   alternative = c("two.sided"),
                   mu = 0, paired = FALSE, var.equal = FALSE,
                   conf.level = 0.95)

ECpvals=apply(EC_region,1,function(x) {t.test(x[2:14],x[15:24])$p.value})