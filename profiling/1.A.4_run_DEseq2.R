## Jinliang Yang
## 8.11.2014
## Using DESeq to analyze differentially expressed genes




################################################
#Raw count data are expected here!
library(DESeq2, lib="~/bin/Rlib/")
run_DESeq2 <- function(rcdata=rc, design_table=tgs[c(7:12, 21:26),], 
                        design_model= design_model){
    # note: the results will be for the last variable in the design formul
  ########## WT and WT4C
  dds <- DESeqDataSetFromMatrix(as.matrix(rcdata), colData=design_table,
                                design = design_model)
  dds <- DESeq(dds)
  res <- results(dds)
  resOrdered <- res[order(res$padj),]
  res <- as.data.frame(res)
  
  sig <- subset(res, padj < 0.05 & abs(log2FoldChange)>1)
  #myres <- subset(res, padj < 0.05 & abs(log2FoldChange)>2)
  message(sprintf("#>>> DE genes: [ %s ], up: [%s], down: [%s]", nrow(sig), 
                  nrow(subset(sig, log2FoldChange >0)), nrow(subset(sig, log2FoldChange <0)) ))
  return(resOrdered)
}


######## CBF and WT under nonstress
s1 <- read.table("data/output1.txt", header=TRUE)
s2 <- read.table("data/output2.txt", header=TRUE)
s3 <- read.table("data/output3.txt", header=TRUE)
s4 <- read.table("data/output4.txt", header=TRUE)

rc <- cbind(s1, s2, s3, s4)
nms <- names(rc)
names(rc) <- gsub("X.home.jolyang.dbcenter.OryzaRNAseq.", "", nms)


mysample <- read.table("data/rice_sample.txt", header=TRUE)
mysample$glum[1:3] <- "yes"

#########
res1 <- run_DESeq2(rcdata=as.matrix(rc), design_table= mysample, design_model = formula(~ tissue + glum))
#>>> DE genes: [ 1818 ], up: [903], down: [915]

write.table(res1,  "data/Table_glum_DEG.csv", sep=",", quote=FALSE)




