!git clone https://github.com/huggingface/transformers
%cd transformers

import logging
import math
import os
import sys
from dataclasses import dataclass, field
from typing import Optional
from datasets import load_dataset
import transformers

!python ./examples/pytorch/language-modeling/run_clm.py \
    --output_dir=first \
    --model_type=gpt2 \
    --model_name_or_path=gpt2 \
    --num_train_epochs=1.0 \
    --do_train \
    --logging_steps=1000 \
    --save_steps=1000 \
    --train_file=C:/Users/ds/OneDrive/happyDB/train.txt \
    --do_eval \
    --validation_file=C:/Users/ds/OneDrive/happyDB/valid.txt \
    --per_device_train_batch_size=124 \
    --per_device_eval_batch_size=124 \
    --gradient_accumulation_steps=5
    
!python ./examples/pytorch/language-modeling/run_clm.py \
    --output_dir=finetune \
    --model_type=gpt2 \
    --model_name_or_path=first \
    --do_eval \
    --validation_file=C:/Users/ds/OneDrive/happyDB/test.txt \
    --per_device_eval_batch_size=124 \

 !python ./examples/pytorch/text-generation/run_generation.py \
    --model_type=gpt2 \
    --length=100 \
    --model_name_or_path=finetune 
