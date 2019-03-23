#!/bin/sh

#PBS -S /bin/bash
#PBS -q cuda
#PBS -N ifml-pytorch-cuda
#PBS -l nodes=denbi2-int
#PBS -l walltime=9:00:00

source ~/.bashrc
conda activate pytorch
cd ~/ifml/ifml_project
CUDA_VISIBLE_DEVICES=0 python3 ~/ifml/ifml_project/jay.py
