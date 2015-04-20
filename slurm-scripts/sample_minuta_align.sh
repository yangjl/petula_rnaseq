# setup alignment 2015-04-11 14:01:03
#module load gmap/2014-05-15

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179197.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179197.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179197.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179197.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179197.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179198.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179198.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179198.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179198.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179198.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179199.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179199.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179199.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179199.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/minuta/SRR1179199.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

