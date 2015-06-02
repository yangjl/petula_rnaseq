### Jinliang Yang
### 6/2/2014


source("~/Documents/Github/zmSNPtools/Rcodes/setUpslurm.R")

run_kallisto <- function(){
    ### index
    ## kallisto index -k 31 -i Osativa_204_v7_1transcript Osativa_204_v7.0.transcript_primaryTranscriptOnly
    
    ### quantification
    ## kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/test.txt 
    ## --plaintext ~/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_1.fastq ~/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_2.fastq
    
    sample <- read.table("data/rice_sample.txt", header=TRUE)
    outsh <- c()
    for(i in 1:nrow(sample)){
        outfile <- gsub(".*/", "", sample$fq1[i])
        outfile <- paste0("largedata/kallisto/", gsub(".sra_1.fastq", "", outfile))
        temsh <- paste("kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o", outfile,
                       "--plaintext", sample$fq1[i], sample$fq2[i])
        outsh <- c(outsh, temsh)
    }
    
    setUpslurm(slurmsh="slurm-scripts/run_kallisto.sh",
               codesh= outsh,
               wd=NULL, jobid="run_kallisto", email="yangjl0930@gmail.com")
}

run_kallisto()
###>>> In this path: cd /home/jolyang/Documents/Github/OryzaRNAseq
###>>> [ note: --ntasks=INT, number of cup ]
###>>> [ note: --mem=16000, 16G memory ]
###>>> RUN: sbatch -p bigmemh --ntasks=2 slurm-scripts/run_kallisto.sh
