#!/bin/bash
#SBATCH -D /home/jolyang/Documents/Github/OryzaRNAseq
#SBATCH -o /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/testout-%j.txt
#SBATCH -e /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/err-%j.txt
#SBATCH -J dump1
set -e
set -u

sh slurm-scripts/dump1.sh

python /home/jolyang/bin/send_email.py -s slurm-scripts/run_dump1.sh
