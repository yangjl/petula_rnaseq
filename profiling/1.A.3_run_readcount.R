## Jinliang Yang
## 8.11.2014
##


featureDB <- "data/Osativa_204_v7.0.sqlite"
#samples <- "largedata/sample.txt"
sample1 <- read.csv("slurm-scripts/sample_barthii.csv")
sample2 <- read.csv("slurm-scripts/sample_glumipatula.csv")
sample3 <- read.csv("slurm-scripts/sample_minuta.csv")
sample4 <- read.csv("slurm-scripts/sample_nivara.csv")
samples <- rbind(sample1, sample2, sample3, sample4)
samples$glum <- "no"
samples[samples$oryza == "glumipatula", ]$glum <- "yes"
samples$bamfile <- gsub("_.*fastq", ".uniq.bam", samples$fq1)
write.table(samples, "data/rice_sample.txt", sep="\t", row.names=FALSE, quote=FALSE)


#############################
#samtools view -h -o out.sam in.bam
#samtools view -h leaf.rep1_1.fastq.concordant_uniq.bam -o leaf.rep1_1.fastq.concordant_uniq.sam
#htseq-count leaf/leaf.rep3.concordant_uniq OS_indica/Oryza_indica.ASM465v1.25.gff3 -i Parent > test2.out

##### get raw read count on gene features
source("lib/readcount.R")
rc <- ReadCount(bamfile = "data/rice_sample.txt", 
                featureDB = "data/Osativa_204_v7.0.sqlite")

write.table(rc, )

#rpkm <- read.csv("largedata/rpkm.csv")
#tem <- rpkm[,1]
#plot(density(tem[tem>10]))

