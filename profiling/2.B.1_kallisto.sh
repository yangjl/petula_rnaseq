#### Jinliang Yang
### June 2nd, 2015
### http://pachterlab.github.io/kallisto/

kallisto index -k 31 -i Osativa_204_v7_1transcript Osativa_204_v7.0.transcript_primaryTranscriptOnly

#kallisto quant -i index -o output pairA_1.fastq pairA_2.fastq pairB_1.fastq pairB_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/test.txt --plaintext ~/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_1.fastq ~/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_2.fastq




