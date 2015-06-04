#####################################
getMapMan <- function(mmfile="data/Osativa_204.csv", DEG=res1, idcol = TRUE){
  mmid <- read.csv(mmfile)
  id <- mmid[, 2:4]
  id$gene <- gsub(".pacid.*", "", id$IDENTIFIER)
  message(sprintf("#>>> Annotation version: [ %s ]", "Osativa_204"))
  
  #########
  myres <- subset(DEG, padj < 0.05 & abs(log2FoldChange) > 1)
  message("#>>> Filtering padj < 0.05 and log2FoldChange > 1")
  
  if(idcol){
    wt4 <- as.data.frame(myres)
    wt4$id <- tolower(wt4$id)
  }else{
    wt4 <- as.data.frame(myres)
    wt4$id <- row.names(wt4)
    wt4$id <- tolower(wt4$id)
  }
  
  wt42 <- merge(id[, c("gene", "IDENTIFIER", "DESCRIPTION")], wt4, by.x="gene", by.y="id")
  wt42 <- wt42[!duplicated(wt42$gene),]
  message(sprintf("#>>> DEG total [ %s ], mapped [ %s ]", nrow(myres), nrow(wt42)))
  return(wt42)
}
