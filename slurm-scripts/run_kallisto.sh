#!/bin/bash
#SBATCH -D /home/jolyang/Documents/Github/OryzaRNAseq
#SBATCH -o /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/testout-%j.txt
#SBATCH -e /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/err-%j.txt
#SBATCH -J run_kallisto
#SBATCH--mail-user=yangjl0930@gmail.com
#SBATCH--mail-type=END
#SBATCH--mail-type=FAIL #email if fails
set -e
set -u

kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1170742 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1170744 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1170762 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1174772 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174772.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174772.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1174773 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174773.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174773.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1174777 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1179197 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179197.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179197.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1179198 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179198.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179198.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1179199 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179199.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179199.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1171629 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/nivara/SRR1171629.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/nivara/SRR1171629.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1171630 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/nivara/SRR1171630.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/nivara/SRR1171630.sra_2.fastq
kallisto quant -i ~/dbcenter/OS_204_v7/Osativa_204_v7_1transcript -o largedata/kallisto/SRR1171631 --plaintext /home/jolyang/dbcenter/OryzaRNAseq/nivara/SRR1171631.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/nivara/SRR1171631.sra_2.fastq
