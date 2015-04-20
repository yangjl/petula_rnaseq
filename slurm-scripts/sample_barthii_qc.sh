#quality checking 2015-04-10 18:03:33
module load FASTX-Toolkit/0.0.13.2-goolf-1.4.10

fastx_quality_stats -Q33 -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq.stat
fastx_quality_stats -Q33 -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq.stat
fastq_quality_boxplot_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq.qc.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq
fastq_quality_boxplot_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq.qc.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq
fastx_nucleotide_distribution_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq.nud.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq
fastx_nucleotide_distribution_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq.nud.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq
fastq_quality_filter -Q33 -q 25 -p 50 -z -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq.qc -v > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_1.fastq.res
fastq_quality_filter -Q33 -q 25 -p 50 -z -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq.qc -v > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170742.sra_2.fastq.res

fastx_quality_stats -Q33 -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq.stat
fastx_quality_stats -Q33 -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq.stat
fastq_quality_boxplot_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq.qc.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq
fastq_quality_boxplot_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq.qc.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq
fastx_nucleotide_distribution_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq.nud.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq
fastx_nucleotide_distribution_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq.nud.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq
fastq_quality_filter -Q33 -q 25 -p 50 -z -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq.qc -v > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_1.fastq.res
fastq_quality_filter -Q33 -q 25 -p 50 -z -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq.qc -v > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170744.sra_2.fastq.res

fastx_quality_stats -Q33 -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq.stat
fastx_quality_stats -Q33 -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq.stat
fastq_quality_boxplot_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq.qc.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq
fastq_quality_boxplot_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq.qc.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq
fastx_nucleotide_distribution_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq.nud.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq
fastx_nucleotide_distribution_graph.sh -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq.stat -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq.nud.png -t /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq
fastq_quality_filter -Q33 -q 25 -p 50 -z -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq.qc -v > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_1.fastq.res
fastq_quality_filter -Q33 -q 25 -p 50 -z -i /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq -o /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq.qc -v > /home/jolyang/dbcenter/OryzaRNAseq/barthii/SRR1170762.sra_2.fastq.res

