#!/bin/bash
#SBATCH -D /home/jolyang/Documents/Github/OryzaRNAseq
#SBATCH -o /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/testout-%j.txt
#SBATCH -e /home/jolyang/Documents/Github/OryzaRNAseq/slurm-log/err-%j.txt
#SBATCH -J dump1
set -e
set -u

module load gcc jdk/1.8 tassel/5
run_pipeline.pl -Xmx64g -fork1 -hdf5Schema /group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5 -export /group/jrigrp4/AllZeaGBSv2.7impV5/schema.txt -runfork1


python /home/jolyang/bin/send_email.py -s slurm-scripts/run_dump1.sh
