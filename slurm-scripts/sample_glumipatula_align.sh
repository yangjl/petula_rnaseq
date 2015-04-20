# setup alignment 2015-04-11 13:56:53
#module load gmap/2014-05-15

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174772.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174772.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174772.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174772.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174772.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174773.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174773.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174773.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174773.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174773.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

gsnap -D /home/jolyang/dbcenter/OS_204_v7/ -d Osative_204_v7 -i 2 -N 1 -w 10000 -A sam -t 8 -n 3 --quality-protocol=sanger --nofails /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_1.fastq /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra_2.fastq --split-output /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra
samtools view -bS /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra.concordant_uniq > /home/jolyang/dbcenter/OryzaRNAseq/glumipatula/SRR1174777.sra.uniq.bam
#rm *concordant* *halfmapping* *nomapping* *paired*

