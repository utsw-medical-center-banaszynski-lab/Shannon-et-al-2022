#!/bin/bash
                         
module load atacworks/0.3.0

atacworks

bws='Sample1 Sample2 Sample3 Sample4'


for bw in $bws

do

echo $bw



python ./scripts/peaksummary.py \
      --peakbw ./AtacWorks/Atacworks_denoised/denoised_out/${bw}_infer.peaks.bw \
      --trackbw ./Atacworks_denoised/denoised_out/${bw}_infer.track.bw \
      --prefix $bw \
      --out_dir "./AtacWorks/Atacworks_denoised/denoised_out" \
      --minlen 20

done
