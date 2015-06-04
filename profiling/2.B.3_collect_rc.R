### Jinliang Yang
### 6/3/2015
### collect kallisto read count


get_readcount <- function(){
    sample <- read.table("data/rice_sample.txt", header=TRUE)
    
    sra <- gsub(".*/", "", sample$fq1)
    sra <- paste0("largedata/kallisto/", gsub(".sra_1.fastq", "", sra))
    
    out1 <- out2 <- data.frame()
    temrc <- read.table(paste(sra[1], "abundance.txt", sep="/"), header=TRUE)
    target <- temrc[1:3]
    counts <- temrc[, c(1,4)]
    id <- gsub(".*/", "", sra[1])
    names(counts)[2] <- id
    tpm <- temrc[, c(1,5)]
    names(tpm)[2] <- id
    for(i in 2:length(sra)){
        temrc <- read.table(paste(sra[i], "abundance.txt", sep="/"), header=TRUE)
        id2 <- gsub(".*/", "", sra[i])
        out1 <- temrc[, c(1,4)]
        names(out1)[2] <- id2
        out2 <- temrc[, c(1,5)]
        names(out2)[2] <- id2
        counts <- merge(counts, out1, by="target_id")
        tpm <- merge(tpm, out2, by="target_id")
    }
    
    return(list(target=target, counts=counts, tpm=tpm))
}

####
out <- get_readcount()
save(file="cache/kallisto_rc.RData", list="out")

#### read counts comparison with traditional approach
rc0 <- read.csv("data/readcount.csv")
rnm <- gsub("\\.MSUR7$", "", row.names(rc0)) 
row.names(rc0) <- rnm

rc1 <- out[[2]]
rc1$target_id <- gsub("\\..", "", rc1$target_id)
rc1 <- subset(rc1, rc1[,2] < 1000000)

par(mfrow=c(2,2))
for(i in 1:4){
    tem <- merge(rc0[, c(1,i)], rc1[,c(1, i+1)], by.x= "row.names", by.y="target_id")
    #r <- cor(tem[,3], tem[,4])
    plot(tem[,3], tem[,4], xlab="alignment", ylab="k-mer", col="darkblue",
         main= paste("Correlation: ", round(cor(tem[,3], tem[,4]),2) ) )
}







