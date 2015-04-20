#!/bin/bash
#SBATCH -D /home/jolyang/Documents/Github/OryzaRNAseq
#SBATCH -o /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/testout-%j.txt
#SBATCH -e /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/err-%j.txt
#SBATCH -J sample_nivara_align.sh
set -e
set -u

module load gmap/2014-05-15
sh slurm-scripts/sample_nivara_align.sh

python /home/jolyang/bin/send_email.py -s slurm-scripts/sample_nivara_align_run.sh
