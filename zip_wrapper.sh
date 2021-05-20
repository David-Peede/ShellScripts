#!/bin/bash
for VCF in *.vcf.gz; do
sbatch -J ${VCF}_zip -N 1 -n 2 -t 1-0 --mem=2G -o ${VCF}_zip-%A.out -e ${VCF}_zip-%A.err --mail-type=ALL --mail-user=david_peede@brown.edu --wrap="module load tabix; tabix -p vcf ${VCF}"
done

# 1) loop through every .vcf.gz file in your directory
# 2) submits a SLURM job for every .vcf.gz file
# 3) outputs an indexed file for ever gzipped vcf file with the extension .tbi
# to execute this script type './zip_wrapper.sh' then hit the return key