### Jinliang Yang
### Feb 20th, 2015

### input

run_qc(miniq=25, minip =50, samplefile="slurm-scripts/sample_barthii.csv")


### output scripts
#Note: the samplefile must named as *.csv
run_qc <- function(miniq=25, minip =50, samplefile="slurm-scripts/sample_barthii.csv"){
    
    
    #shfile = "largedata/step1_qc.sh"
    basefile <- gsub("\\.csv$", "", samplefile)
    shfile <- paste0(basefile, "_qc.sh")
    slurmfile <- paste0(basefile, "_qc_run.sh")
    ### int passes to fastq_quality_filer Minimum quality score to keep
    #q = 25
    ### Minimum percent of bases that must have [-q] quality
    #p = 50
    
    ######################################################################
    source("lib/PE_qc.R")
    PE_qc(fqfile = samplefile, shfile = shfile, q = miniq, p = minip)
    
    source("lib/setUpslurm.R")
    setUpslurm(slurmsh=slurmfile, 
               codesh= paste("module load FASTX-Toolkit/0.0.13.2-goolf-1.4.10", paste("sh", shfile), sep="\n"),
               wd=NULL, jobid= gsub(".*\\/", "", basefile), email=TRUE)
}

