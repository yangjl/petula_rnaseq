#!/bin/bash
#SBATCH -D /home/jolyang/Documents/Github/OryzaRNAseq
#SBATCH -o /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/testout-%j.txt
#SBATCH -e /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/err-%j.txt
#SBATCH -J sample_barthii
set -e
set -u

module load FASTX-Toolkit/0.0.13.2-goolf-1.4.10
sh slurm-scripts/sample_barthii_qc.sh

python /home/jolyang/bin/send_email.py -s slurm-scripts/sample_barthii_qc_run.sh
