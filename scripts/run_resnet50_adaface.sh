#!/bin/bash

python main.py \
    --data_root /home/ubuntu/datasets/ \
    --train_data_path faces_emore \
    --val_data_path faces_emore \
    --prefix resnet50_adaface_ms1mv2 \
    --use_wandb \
    --use_mxrecord \
    --gpus 1 \
    --use_16bit \
    --arch resnet50_adaface \
    --batch_size 256 \
    --num_workers 8 \
    --epochs 26 \
    --lr_milestones 12,20,24 \
    --lr 0.01 \
    --head adaface \
    --m 0.4 \
    --h 0.333 \
    --low_res_augmentation_prob 0.2 \
    --crop_augmentation_prob 0.2 \
    --photometric_augmentation_prob 0.2