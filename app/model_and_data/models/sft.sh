#!/bin/bash

CUDA_VISIBLE_DEVICES=1 python  ./src/train_bash.py \
    --stage sft \
    --model_name_or_path /data/Models/LLM/Qwen-7B-Chat \
    --do_train \
    --dataset tcqa,tcqa_talk \
    --dataset_dir ./data \
    --template chatml \
    --finetuning_type lora \
    --lora_target c_attn \
    --lora_rank 64 \
    --max_source_length 512 \
    --max_target_length 256 \
    --output_dir ./output/output_0918_all1 \
    --dataloader_num_workers 8 \
    --overwrite_cache \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 4e-5 \
    --num_train_epochs 20.0 \
    --plot_loss \
    --fp16

#accelerate config --config_file default  # 首先配置分布式环境
#/home/haidong/.cache/huggingface/accelerate/default_config.yaml123
#    --model_name_or_path /data/Code/haidong/LLama-tuning/output/output_0915 \