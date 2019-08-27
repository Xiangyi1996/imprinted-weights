#!/usr/bin/env bash
#CUDA_VISIBLE_DEVICES=3 python -u canet_origin.py --data /Volumes/Data/CUB_200_2011/

Node=15
num_sample=20
CUDA_DEVICE=1

CUDA_VISIBLE_DEVICES=$CUDA_DEVICE python -u imprint_ft.py --model pretrain_checkpoint/model_best.pth.tar \
--num-sample $num_sample \
--checkpoint imprint_ft_checkpoint/num_sample_$num_sample/ \
