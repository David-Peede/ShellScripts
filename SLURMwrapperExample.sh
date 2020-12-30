#!/bin/bash
###subset every vcf file to create a MHC region specific vcf###

for VCF in *.vcf.gz; do
sbatch -J ${VCF}_bcfwrapper -N 1 -n 4 -t 1-0 --mem=2G -o ${VCF}_BCFwrap-%A.out -e ${VCF}_BCFwrap-%A.err --mail-type=ALL --mail-user=david_peede@brown.edu --wrap="module load bcftools/1.10.2 gsl/2.5 gcc/8.3 perl/5.24.1; bcftools view -r 6:29640000-33120000 -Oz -o MHC_${VCF} ${VCF}"
done

#1) loop through every .vcf.gz file in your directory
#2) submits a SLURM job for every .vcf.gz file
#to execute this script type './SLURMwrapperExample.sh' then hit the return key