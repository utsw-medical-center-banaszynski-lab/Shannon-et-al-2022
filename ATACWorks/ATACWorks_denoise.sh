#!/bin/bash


export CUDA_VISIBLE_DEVICES=0               

#Using the pretrained model from here - https://catalog.ngc.nvidia.com/orgs/nvidia/models/atac_bulk_lowqual_20m_20m


module load atacworks/0.3.0

#Run denoising on the data
atacworks atacworks denoise \
                    --noisybw ./AtacWorks_preprocessing/bws/Sample1.cutsites.smoothed_200.coverage.bw \
                    --genome ./AtacWorks/hg19.auto.sizes \
                    --weights_path ./AtacWorks/atac_bulk_lowqual_20m_20m_0.3/models/model.pth.tar \
                    --out_home "./AtacWorks/Atacworks_denoised" \
                    --exp_name "atacworks_denoise_Sample1" \
                    --distributed \
                    --num_workers 0
