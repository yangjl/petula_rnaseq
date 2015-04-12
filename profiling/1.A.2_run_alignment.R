### Jinliang yang
### 2.17.2015
source("lib/PE_alignment.R")
source("lib/setUpslurm.R")


run_align(samplefil="slurm-scripts/sample_barthii.csv", cpu=8)
run_align(samplefil="slurm-scripts/sample_glumipatula.csv", cpu=8)
run_align(samplefil="slurm-scripts/sample_minuta.csv", cpu=8)
###>>> RUN: sbatch -p bigmemh --ntasks 8 slurm-scripts/sample_minuta_align_run.sh
run_align(samplefil="slurm-scripts/sample_nivara.csv", cpu=8)
###>>> RUN: sbatch -p bigmemh --ntasks 8 slurm-scripts/sample_nivara_align_run.sh




### input
run_align <- function(samplefile="", cpu=8){
    # miss: number of miss match
    
    #shfile = "largedata/step1_qc.sh"
    basefile <- gsub("\\.csv$", "", samplefile)
    shfile <- paste0(basefile, "_align.sh")
    slurmfile <- paste0(basefile, "_align_run.sh")
    ### number of CPU to use for mapping
    
    ######################################################################

    setup_PE_alignment(fqfile = samplefile, shfile = shfile,
                       DBdir="/home/jolyang/dbcenter/OS_204_v7/", DBnm="Osative_204_v7", cpu=cpu)
    
    
    setUpslurm(slurmsh=slurmfile, wd=NULL, jobid= gsub(".*/", "", shfile),
               codesh= paste("module load gmap/2014-05-15", paste("sh", shfile), sep="\n"),
               email=TRUE)
    ###>>> In this path: cd /home/jolyang/Documents/Github/Demo
    ###>>> [ note: --ntasks=INT, number of cup ]
    ###>>> [ note: --mem=16000, 16G memory ]
    ###>>> RUN: sbatch -p bigmemh --ntasks 16 largedata/slurm_step2_align.sh
    
}
  

###>>> Generate [ largedata/step2_align1.sh ] for alignment using GSNAP!
###>>> In this path: cd /home/jolyang/Documents/Github/Demo
###>>> [ note: --ntasks=INT, number of cup ]
###>>> [ note: --mem=16000, 16G memory ]
###>>> RUN: sbatch -p bigmemh --ntasks 16 largedata/slurm_step2_align1.sh
###>>> Generate [ largedata/step2_align2.sh ] for alignment using GSNAP!
###>>> In this path: cd /home/jolyang/Documents/Github/Demo
###>>> [ note: --ntasks=INT, number of cup ]
###>>> [ note: --mem=16000, 16G memory ]
###>>> RUN: sbatch -p bigmeml --ntasks 16 largedata/slurm_step2_align2.sh
###>>> Generate [ largedata/step2_align3.sh ] for alignment using GSNAP!
###>>> In this path: cd /home/jolyang/Documents/Github/Demo
###>>> [ note: --ntasks=INT, number of cup ]
###>>> [ note: --mem=16000, 16G memory ]
###>>> RUN: sbatch -p bigmeml --ntasks 16 largedata/slurm_step2_align3.sh
###>>> Generate [ largedata/step2_align4.sh ] for alignment using GSNAP!
###>>> In this path: cd /home/jolyang/Documents/Github/Demo
###>>> [ note: --ntasks=INT, number of cup ]
###>>> [ note: --mem=16000, 16G memory ]
###>>> RUN: sbatch -p bigmemh --ntasks 16 largedata/slurm_step2_align4.sh
###>>> Generate [ largedata/step2_align5.sh ] for alignment using GSNAP!
###>>> In this path: cd /home/jolyang/Documents/Github/Demo
###>>> [ note: --ntasks=INT, number of cup ]
###>>> [ note: --mem=16000, 16G memory ]
###>>> RUN: sbatch -p bigmeml --ntasks 16 largedata/slurm_step2_align5.sh
###>>> Generate [ largedata/step2_align6.sh ] for alignment using GSNAP!
###>>> In this path: cd /home/jolyang/Documents/Github/Demo
###>>> [ note: --ntasks=INT, number of cup ]
###>>> [ note: --mem=16000, 16G memory ]
###>>> RUN: sbatch -p bigmeml --ntasks 16 largedata/slurm_step2_align6.sh

