#!/usr/bin/env bash
#CUDA_VISIBLE_DEVICES=3 python -u pretrain.py --data /Volumes/Data/CUB_200_2011/ -b 8

EXPERIMENTS_HOME=/Users/xiangyi/Documents/GitHub/imprinted-weights
n_epochs=100
batch_size=64
device='cuda'
lr=0.001
lr_decay=0.94
lr_decay_steps=4
n_shots=0

exp_dir=$EXPERIMENTS_HOME
data_dir=/Volumes/Data/CUB_200_2011/
echo exp-dir: $exp_dir
echo data-dir: $data_dir

CUDA_VISIBLE_DEVICES=3 python -u pretrain.py\
	--device=$device \
	--exp_dir=$exp_dir \
	--data_dir=$data_dir \
	--n_epochs=$n_epochs \
	--batch_size=$batch_size \
	--lr=$lr \
	--lr_decay=$lr_decay \
	--lr_decay_steps=$lr_decay_steps \
	--batch_size=$batch_size \
	--n_shots=$n_shots \
	--fine_tune
	# --cosine_sim