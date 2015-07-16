### Jinliang Yang
### June 10th, 2015
### DEG

################################################
#Raw count data are expected here!
library(DESeq2, lib="~/bin/Rlib/")
run_DESeq2 <- function(rcdata=rc, design_table=tgs[c(7:12, 21:26),], 
                       design_model= design_model, maplot=TRUE, ...){
    # note: the results will be for the last variable in the design formul
    ########## WT and WT4C
    dds <- DESeqDataSetFromMatrix(as.matrix(rcdata), colData=design_table,
                                  design = design_model)
    dds <- DESeq(dds)
    if(maplot){
        plotMA(results(dds), ...)
    }
    #####>>>>
    res <- results(dds)
    resOrdered <- res[order(res$padj),]
    res <- as.data.frame(res)
    
    sig <- subset(res, padj < 0.05 & abs(log2FoldChange)>1)
    #myres <- subset(res, padj < 0.05 & abs(log2FoldChange)>2)
    message(sprintf("#>>> DE genes: [ %s ], up: [%s], down: [%s]", nrow(sig), 
                    nrow(subset(sig, log2FoldChange >0)), nrow(subset(sig, log2FoldChange <0)) ))
    return(sig)
}


#########
#((nivara,(barthii,gluma)),minuta)
obj <- load("cache/kallisto_rc.RData")
mysample <- read.table("data/rice_sample.txt", header=TRUE)
mysample$glum[1:3] <- "yes"
rc<- out[[2]]
row.names(rc) <- rc[,1]
rc <- rc[, -1]
rc <- apply(rc, 2, round)

#################### without minuta

pdf("graphs/maplots.pdf", width=10, height=7)
par(mfrow=c(2,3))
#### leaf: barthii and glumipatula vs. nivara
cols <- c(1, 4, 10)
res1 <- run_DESeq2(rcdata=as.matrix(rc[, cols]), design_table= mysample[cols, ], 
                   design_model = formula(~ glum), maplot=TRUE, main="Leaf: (barthii and glumipatula) vs. nivara")
#>>> DE genes: [ 730 ], up: [362], down: [368]
write.table(res1,  "data/Table1_leaf_bg_n.csv", sep=",", quote=FALSE)

#### root: barthii and glumipatula vs. nivara
cols <- c(2, 6, 11)
res2 <- run_DESeq2(rcdata=as.matrix(rc[, cols]), design_table= mysample[cols, ], 
                   design_model = formula(~ glum), maplot=TRUE, main="Root: (barthii and glumipatula) vs. nivara")
#>>> DE genes: [ 1252 ], up: [1040], down: [212]
write.table(res2,  "data/Table2_root_bg_n.csv", sep=",", quote=FALSE)

#### panicle: barthii and glumipatula vs. nivara
cols <- c(3, 5, 12)
res3 <- run_DESeq2(rcdata=as.matrix(rc[, cols]), design_table= mysample[cols, ], 
                   design_model = formula(~ glum), maplot=TRUE, main="Panicle: (barthii and glumipatula) vs. nivara")
#>>> DE genes: [ 1185 ], up: [548], down: [637]
write.table(res3,  "data/Table3_panicle_bg_n.csv", sep=",", quote=FALSE)

################################################
mysample2 <- mysample
mysample2$glum[1:3] <- "no"
#### leaf:  glumipatula vs. (barthii and nivara)
cols <- c(1, 4, 10)
res4 <- run_DESeq2(rcdata=as.matrix(rc[, cols]), design_table= mysample2[cols, ], 
                   design_model = formula(~ glum), maplot=TRUE, main="Leaf: glumipatula vs. (barthii and nivara)")
#>>> DE genes: [ 1479 ], up: [675], down: [804]
write.table(res4,  "data/Table4_leaf_g_bn.csv", sep=",", quote=FALSE)

#### root: barthii and glumipatula vs. nivara
cols <- c(2, 6, 11)
res5 <- run_DESeq2(rcdata=as.matrix(rc[, cols]), design_table= mysample2[cols, ], 
                   design_model = formula(~ glum), maplot=TRUE, main="Root: glumipatula vs. (barthii and nivara)")
#>>> DE genes: [ 1883 ], up: [1303], down: [580]
write.table(res5,  "data/Table5_root_g_bn.csv", sep=",", quote=FALSE)

#### panicle: barthii and glumipatula vs. nivara
cols <- c(3, 5, 12)
res6 <- run_DESeq2(rcdata=as.matrix(rc[, cols]), design_table= mysample2[cols, ], 
                   design_model = formula(~ glum), maplot=TRUE, main="Panicle: glumipatula vs. (barthii and nivara)")
#>>> DE genes: [ 1972 ], up: [431], down: [1541]
write.table(res6,  "data/Table6_panicle_g_bn.csv", sep=",", quote=FALSE)
dev.off()





#############
res2 <- run_DESeq2(rcdata=as.matrix(rc[, c(1:6,10:12)]), 
                   design_table= mysample[c(1:6,10:12),], design_model = formula(~ tissue + glum))
#>>> DE genes: [ 1873 ], up: [953], down: [920]
write.table(res2,  "data/Table2_no_minuta.csv", sep=",", quote=FALSE)

sum(row.names(subset(res1, padj < 0.05 & abs(log2FoldChange)>1)) 
    %in% row.names(subset(res2, padj < 0.05 & abs(log2FoldChange)>1)))
### 870

