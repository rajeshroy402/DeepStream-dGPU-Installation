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
sudo apt-get install dkms
sudo apt install libssl1.1 gstreamer1.0-libav libgstreamer-plugins-base1.0-dev libjsoncpp-dev protobuf-compiler -y
sudo apt-get install linux-headers-$(uname -r)

#Downloading NVIDIA Gefore Drivers
cd ~/nvidia-debians-by-rajesh
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/525.105.17/NVIDIA-Linux-x86_64-525.105.17.run

#Downloading CUDA 11.6
cd ~/nvidia-debians-by-rajesh
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run

#Downloading and installing CUDA keyring
cd ~/nvidia-debians-by-rajesh
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update

sudo apt install python3-pip -y
sudo pip3 install gdown
source ~/.bashrc

#Downloading DeepStream-6.2 debian
cd ~/nvidia-debians-by-rajesh
sudo gdown https://drive.google.com/uc?id=1MPBIHmZxu8z9pPAsTxUTAkddUW1IziyX

sudo rm /etc/modprobe.d/blacklist-nouveau.conf && sudo touch /etc/modprobe.d/blacklist-nouveau.conf
sudo printf "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u

printf "Please restart your device now: \nUse 'sudo reboot now'\n"
