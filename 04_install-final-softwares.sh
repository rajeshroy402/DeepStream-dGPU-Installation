#! /bin/bash

#This is created by Rajesh Roy (rajeshroy402@gmail.com)

echo "This repo is owned and managed by Rajesh Roy <rajeshroy402@gmail.com>"

############################################################

sudo apt-get install nvidia-prime
sudo prime-select nvidia

cd ~/files_by_rajesh
sudo sh cuda_12.1.1_530.30.02_linux.run --silent --toolkit

echo "I am now updating the bash file:"
echo $'export PATH=/usr/local/cuda-12.1/bin${PATH:+:${PATH}}\nexport LD_LIBRARY_PATH=/usr/local/cuda-12.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc && source ~/.bashrc


sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo apt-get update
sudo apt-get install libnvinfer8=8.5.3-1+cuda11.8 libnvinfer-plugin8=8.5.3-1+cuda11.8 libnvparsers8=8.5.3-1+cuda11.8 libnvonnxparsers8=8.5.3-1+cuda11.8 libnvinfer-bin=8.5.3-1+cuda11.8 libnvinfer-dev=8.5.3-1+cuda11.8 libnvinfer-plugin-dev=8.5.3-1+cuda11.8 libnvparsers-dev=8.5.3-1+cuda11.8 libnvonnxparsers-dev=8.5.3-1+cuda11.8 libnvinfer-samples=8.5.3-1+cuda11.8 libcudnn8=8.7.0.84-1+cuda11.8 libcudnn8-dev=8.7.0.84-1+cuda11.8 python3-libnvinfer=8.5.3-1+cuda11.8 python3-libnvinfer-dev=8.5.3-1+cuda11.8
sudo apt-mark hold libnvinfer* libnvparsers* libnvonnxparsers* libcudnn8* python3-libnvinfer* tensorrt

sudo apt-get install ./deepstream-6.3_6.3.0-1_amd64.deb
rm ${HOME}/.cache/gstreamer-1.0/registry.x86_64.bin
sudo ln -snf /usr/local/cuda-12.1 /usr/local/cuda

printf "Please restart your device now: \nUse 'sudo reboot now'\n"