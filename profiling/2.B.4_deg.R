### Jinliang Yang
### 6/3/2015
### downstream

library(ape)
obj <- load("cache/kallisto_rc.RData")
#out[[1]]: gene length; out[[2]]: read count;  out3[[3]]: tpm

sample <- read.table("data/rice_sample.txt", header=TRUE)

tpm <- out[[3]][, -1]
names(tpm) <- paste(sample$oryza, sample$tissue, sep="_")

d <- cor(tpm, method="spearman")
hc <- hclust(dist(1-d))
plot.phylo(as.phylo(hc), type="p", edge.col=4, edge.width=3, show.node.label=TRUE, no.margin=TRUE)