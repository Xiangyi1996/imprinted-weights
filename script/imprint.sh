#!/usr/bin/env bash
#CUDA_VISIBLE_DEVICES=3 python -u canet_origin.py --data /Volumes/Data/CUB_200_2011/

num_sample=20

python imprint.py --model pretrain_checkpoint/model_best.pth.tar \
--num-sample $num_sample \
--aug 1