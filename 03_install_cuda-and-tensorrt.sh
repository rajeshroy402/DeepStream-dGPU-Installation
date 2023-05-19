#! /bin/bash

#author - rajeshroy402@gmail.com

sudo echo "Hi, let's install CUDA and TensorRT here!"

cd /home/$USER/nvidia-debians-by-rajesh

# Installing CUDA
sudo echo "Installing CUDA..."
sudo sh cuda_11.8.0_520.61.05_linux.run --silent --toolkit

#Installing TensorRT
sudo echo "Installing TensorRT..."
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo apt-get update -y
sudo apt-get install libnvinfer8=8.5.2-1+cuda11.8 libnvinfer-plugin8=8.5.2-1+cuda11.8 libnvparsers8=8.5.2-1+cuda11.8 libnvonnxparsers8=8.5.2-1+cuda11.8 libnvinfer-bin=8.5.2-1+cuda11.8 libnvinfer-dev=8.5.2-1+cuda11.8 libnvinfer-plugin-dev=8.5.2-1+cuda11.8 libnvparsers-dev=8.5.2-1+cuda11.8 libnvonnxparsers-dev=8.5.2-1+cuda11.8 libnvinfer-samples=8.5.2-1+cuda11.8 libcudnn8=8.7.0.84-1+cuda11.8 libcudnn8-dev=8.7.0.84-1+cuda11.8 python3-libnvinfer=8.5.2-1+cuda11.8 python3-libnvinfer-dev=8.5.2-1+cuda11.8 -y
sudo apt-mark hold libnvinfer* libnvparsers* libnvonnxparsers* libcudnn8* python3-libnvinfer* tensorrt

echo "Wonderful, you are all set to install DeepStream now"
