#! /bin/bash

#author - rajeshroy402@gmail.com

sudo echo "Hi, let's install TensorRT here!"

#Installing TensorRT

cd ~/nvidia-debians-by-rajesh
sudo rm /etc/apt/sources.list.d/*cuda*
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo apt-get update -y
sudo dpkg -i nv-tensorrt-repo-ubuntu2004-cuda11.4-trt8.2.5.1-ga-20220505_1-1_amd64.deb
sudo apt-key add /var/nv-tensorrt-repo-ubuntu2004-cuda11.4-trt8.2.5.1-ga-20220505/82307095.pub
sudo apt-get update -y
echo "let's do tensorrt now"
sudo apt install tensorrt -y
