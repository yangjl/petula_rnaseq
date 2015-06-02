## Jinliang Yang
## May 18th, 2015
## count the read count from RNA-seq


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

write.table(samples[1:3, ], "data/rice_sample1.txt", sep="\t", row.names=FALSE, quote=FALSE)
write.table(samples[4:6, ], "data/rice_sample2.txt", sep="\t", row.names=FALSE, quote=FALSE)
write.table(samples[7:9, ], "data/rice_sample3.txt", sep="\t", row.names=FALSE, quote=FALSE)
write.table(samples[10:12, ], "data/rice_sample4.txt", sep="\t", row.names=FALSE, quote=FALSE)

#############################
#samtools view -h -o out.sam in.bam
#samtools view -h leaf.rep1_1.fastq.concordant_uniq.bam -o leaf.rep1_1.fastq.concordant_uniq.sam
#htseq-count leaf/leaf.rep3.concordant_uniq OS_indica/Oryza_indica.ASM465v1.25.gff3 -i Parent > test2.out

##### get raw read count on gene features
source("lib/readcount.R")
rc1 <- ReadCount(bamfile = "data/rice_sample1.txt", 
                featureDB = "data/Osativa_204_v7.0.sqlite")
write.table(rc1, "data/output1.txt", sep="\t", row.names=TRUE, quote=FALSE )

rc2 <- ReadCount(bamfile = "data/rice_sample2.txt", 
                 featureDB = "data/Osativa_204_v7.0.sqlite")

write.table(rc2, "data/output2.txt", sep="\t", row.names=TRUE, quote=FALSE )

rc3 <- ReadCount(bamfile = "data/rice_sample3.txt", 
                 featureDB = "data/Osativa_204_v7.0.sqlite")

write.table(rc3, "data/output3.txt", sep="\t", row.names=TRUE, quote=FALSE )

rc4 <- ReadCount(bamfile = "data/rice_sample4.txt", 
                 featureDB = "data/Osativa_204_v7.0.sqlite")

write.table(rc4, "data/output4.txt", sep="\t", row.names=TRUE, quote=FALSE )


#rpkm <- read.csv("largedata/rpkm.csv")
#tem <- rpkm[,1]
#plot(density(tem[tem>10]))