#! /bin/bash

#author - rajeshroy402@gmail.com

sudo echo "We will install dependencies for DeepStream-6.1 in this process"
rm -rf ~/nvidia-debians-by-rajesh
mkdir ~/nvidia-debians-by-rajesh
sudo apt update -y
sudo apt install nano -y
sudo apt install \
libgstreamer1.0-0 \
gstreamer1.0-tools \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
libgstrtspserver-1.0-0 \
libjansson4 \
libyaml-cpp-dev \
gcc \
make \
git \
python3 -y
sudo apt-get install gcc make git libtool autoconf autogen pkg-config cmake -y
sudo apt-get install python3 python3-dev python3-pip -y
#sudo apt-get install linux-headers-$(uname -r)

#Downloading NVIDIA Gefore Drivers
cd ~/nvidia-debians-by-rajesh
#wget https://us.download.nvidia.com/XFree86/Linux-x86_64/510.47.03/NVIDIA-Linux-x86_64-510.47.03.run
#Downloading CUDA 11.6
cd ~/nvidia-debians-by-rajesh
wget https://developer.download.nvidia.com/compute/cuda/11.6.1/local_installers/cuda-repo-ubuntu2004-11-6-local_11.6.1-510.47.03-1_amd64.deb
sudo apt install python3-pip -y
sudo pip3 install gdown
source ~/.bashrc
#Downloading DeepStream-6.1 debian
cd ~/nvidia-debians-by-rajesh
gdown https://drive.google.com/uc?id=1aHuH0G5Ep5cl47LscDN8pzNOhTUF1Yh-
# Downloading TensorRT debian
cd ~/nvidia-debians-by-rajesh
gdown https://drive.google.com/uc?id=14-96XXzqbjfnaGrMw_EPLThQ2IoCA3U-
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb

sudo rm /etc/modprobe.d/blacklist-nouveau.conf && sudo touch /etc/modprobe.d/blacklist-nouveau.conf
sudo printf "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u

printf "Please restart your device now: \nUse 'sudo reboot now'\n"
