#! /bin/bash

#author - rajeshroy402@gmail.com

# Installing CUDA
sudo echo "Hi, let's install DeepStream here!"

cd ~/nvidia-debians-by-rajesh
echo "Let's install DS-6.2!"

sudo apt-get install ./deepstream-6.2_6.2.0-1_amd64.deb -y
rm ${HOME}/.cache/gstreamer-1.0/registry.x86_64.bin
sudo ln -snf /usr/local/cuda-11.8 /usr/local/cuda

echo "Installation is completed !!!"
