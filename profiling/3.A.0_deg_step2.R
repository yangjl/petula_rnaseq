### Jinliang Yang
### June 10th, 2015
### DEG

################################################
#Raw count data are expected here!
library(DESeq2, lib="~/bin/Rlib/")
run_DESeq2 <- function(rcdata=rc, design_table=tgs[c(7:12, 21:26),], 
                       design_model= design_model, maplot=TRUE){
    # note: the results will be for the last variable in the design formul
    ########## WT and WT4C
    dds <- DESeqDataSetFromMatrix(as.matrix(rcdata), colData=design_table,
                                  design = design_model)
    dds <- DESeq(dds)
    if(maplot){
        plotMA(results(dds))
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

####################
res1 <- run_DESeq2(rcdata=as.matrix(rc[, c(1,7,10)]), design_table= mysample[c(1,7,10), ], 
                   design_model = formula(~ glum), maplot=TRUE)
#>>> DE genes: [ 415 ], up: [223], down: [192]
write.table(res1,  "data/Table1_with_minuta.csv", sep=",", quote=FALSE)

#############
res2 <- run_DESeq2(rcdata=as.matrix(rc[, c(1:6,10:12)]), 
                   design_table= mysample[c(1:6,10:12),], design_model = formula(~ tissue + glum))
#>>> DE genes: [ 1873 ], up: [953], down: [920]
write.table(res2,  "data/Table2_no_minuta.csv", sep=",", quote=FALSE)

sum(row.names(subset(res1, padj < 0.05 & abs(log2FoldChange)>1)) 
    %in% row.names(subset(res2, padj < 0.05 & abs(log2FoldChange)>1)))
### 870

