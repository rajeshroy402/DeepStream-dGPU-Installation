#! /bin/bash

#author - rajeshroy402@gmail.com

sudo echo "We will install dependencies for DeepStream-6.1 in this process"
rm -rf ~/nvidia-debians-by-rajesh
mkdir ~/nvidia-debians-by-rajesh
sudo apt update -y
sudo apt install nano -y
sudo apt install \
libssl1.1 \
libgstreamer1.0-0 \
gstreamer1.0-tools \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamerdri1.0-libav \
libgstrtspserver-1.0-0 \
libjansson4 \
libyaml-cpp-dev \
gcc \
make \
git \
python3
sudo apt-get install gcc make git libtool autoconf autogen pkg-config cmake
sudo apt-get install python3 python3-dev python3-pip
#sudo apt-get install linux-headers-$(uname -r)

#Downloading NVIDIA Gefore Drivers
cd ~/nvidia-debians-by-rajesh
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/510.47.03/NVIDIA-Linux-x86_64-510.47.03.run
#Downloading CUDA 11.6
cd ~/nvidia-debians-by-rajesh
wget https://developer.download.nvidia.com/compute/cuda/11.6.1/local_installers/cuda_11.6.1_510.47.03_linux.run
sudo apt install python3-pip -y
sudo pip3 install gdown
source ~/.bashrc
#Downloading DeepStream-6.1 debian
cd ~/nvidia-debians-by-rajesh
gdown https://drive.google.com/uc?id=1aHuH0G5Ep5cl47LscDN8pzNOhTUF1Yh-
# Downloading TensorRT debian
cd ~/nvidia-debians-by-rajesh
gdown https://drive.google.com/uc?id=14-96XXzqbjfnaGrMw_EPLThQ2IoCA3U-
sudo touch /etc/modprobe.d/blacklist-nouveau.conf
sudo printf "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u

printf "Please restart your device now: \nUse 'sudo reboot now'\n"
