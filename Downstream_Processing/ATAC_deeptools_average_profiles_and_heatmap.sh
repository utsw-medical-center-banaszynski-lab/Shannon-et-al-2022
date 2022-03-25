#!/bin/bash


module load python/3.7.x-anaconda
conda activate deeptools


computeMatrix reference-point -R ./gencode_hg19/gencode.v19_TSS.bed -S ./AtacWorks/Atacworks_denoised/denoised_out/Sample1_infer.track.bw ./AtacWorks/Atacworks_denoised/denoised_out/Sample2_infer.track.bw ./AtacWorks/Atacworks_denoised/denoised_out/Sample3_infer.track.bw ./AtacWorks/Atacworks_denoised/denoised_out/Sample4_infer.track.bw --referencePoint TSS --beforeRegionStartLength 2000 --afterRegionStartLength 2000 --skipZeros --outFileName ATAC_OTC_gencode_v19_TSS_enrichment.gz --outFileSortedRegions ATAC_OTC_gencode_v19_TSS_enrichment.bed

#Average Profile
plotProfile -m ATAC_OTC_gencode_v19_TSS_enrichment.gz -out ATAC_OTC_gencode_v19_TSS_profile.pdf --plotFileFormat pdf --samplesLabel 'Sample_1' 'Sample_2' 'Sample_3' 'Sample_4' --refPointLabel TSS --perGroup --plotTitle '' --colors blue red black purple darkgoldenrod dodgerblue

#Heatmap
plotHeatmap -m ATAC_OTC_gencode_v19_TSS_enrichment.gz -out ATAC_OTC_gencode_v19_TSS_heatmap.pdf --heatmapHeight 20 --samplesLabel 'Sample_1' 'Sample_2' 'Sample_3' 'Sample_4' --refPointLabel TSS --boxAroundHeatmaps no --whatToShow 'heatmap and colorbar' --dpi 500 --perGroup --interpolationMethod nearest --heatmapWidth 10 --heatmapWidth 10 --plotTitle '' --colorMap Greens


