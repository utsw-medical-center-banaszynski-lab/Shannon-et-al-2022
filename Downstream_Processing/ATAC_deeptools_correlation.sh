#!/bin/bash


module load python/3.7.x-anaconda
conda activate deeptools


multiBigwigSummary bins --bwfiles ./AtacWorks/Atacworks_denoised/denoised_out/Sample1_infer.track.bw ./AtacWorks/Atacworks_denoised/denoised_out/Sample2_infer.track.bw ./AtacWorks/Atacworks_denoised/denoised_out/Sample3_infer.track.bw ./AtacWorks/Atacworks_denoised/denoised_out/Sample4_infer.track.bw -o ./correlation/ATAC_OTC.npz --outRawCounts ./correlation/ATAC_OTC.tab

plotCorrelation --corData ./correlation/ATAC_OTC.npz --corMethod spearman --skipZeros --whatToPlot scatterplot --plotFile ./correlation/ATAC_OTC.pdf --labels 'Sample1 Sample2 Sample3 Sample4 --plotFileFormat pdf --outFileCorMatrix ./correlation/ATAC_OTC_correlation.tab





