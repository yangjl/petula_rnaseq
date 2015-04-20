# setup alignment 2015-04-11 11:04:51
#module load gmap/2014-05-15

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

