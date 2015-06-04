# Jinliang Yang
# Oct 5th, 2014
# MapMan annotation

source("lib/getMapMan.R")
######
res1 <- read.csv("data/Table1_with_minuta.csv")
mm1 <- getMapMan(mmfile="data/Osativa_204.csv", DEG=res1, idcol = FALSE)
#>>> Annotation version: [ Osativa_204 ]
#>>> Filtering padj < 0.05 and log2FoldChange > 1
#>>> DEG total [ 1726 ], mapped [ 1726 ]
write.table(mm1[, c("IDENTIFIER", "log2FoldChange")], "data/res1_mm1726.txt", sep="\t", row.names=FALSE, quote=FALSE)

res2 <- read.csv("data/Table2_no_minuta.csv")
mm2 <- getMapMan(mmfile="data/Osativa_204.csv", DEG=res2, idcol = FALSE)
#>>> Annotation version: [ Osativa_204 ]
#>>> Filtering padj < 0.05 and log2FoldChange > 1
#>>> DEG total [ 1873 ], mapped [ 1873 ]
write.table(mm2[, c("IDENTIFIER", "log2FoldChange")], "data/res2_mm1873.txt", sep="\t", row.names=FALSE, quote=FALSE)


