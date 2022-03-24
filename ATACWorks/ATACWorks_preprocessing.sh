#!/bin/bash

module load python/3.7.x-anaconda
conda activate atacworks_preprocess
module load UCSC_userApps

bams='Sample1 Sample2 Sample3 Sample4'

for bam in $bams

do

echo $bam

/work/GCRB/s157114/softwares/atacworks_analysis/preprocessing/atac_bam2bw.sh ${bam}.nodup.downsampled.bam hg19.chrom.sizes 200 ./AtacWorks/AtacWorks_preprocessing ./AtacWorks/AtacWorks_preprocessing

done

