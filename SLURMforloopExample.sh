#!/bin/bash
#
#SBATCH -J zipVCF								#job name
#SBATCH -N 1									#ensure that all cores are on one node
#SBATCH -n 4									#number of cores
#SBATCH -t 1-0									#runtime in D-HH:MM
#SBATCH --mem 2G								#memory in GB
#SBATCH -o zip-%A.out							#file for STDOUT
#SBATCH -e zip-%A.err							#file for STDERR
#SBATCH --mail-type=ALL							#type of email notification: BEGIN,END,FAIL
#SBATCH --mail-user=david_peede@brown.edu		#email where notifications will be sent


###submit one SLURM job to zip and index three vcfs###



module load tabix


for i in AltaiNeandertal.vcf VindijaNeandertal.vcf Denisovan.vcf

do VCF=$i
	bgzip ${VCF}
	tabix -p vcf ${VCF}.gz
    done;
    
#1) loop through the three vcf files
#2) zip each vcf creating a vcf.gz file
#3) index each vcf.gz file and output a vcf.gz.tbi
#to execute this script type 'sbatch SLURMforloopExample.sh' then hit the return key