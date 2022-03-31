#! /bin/bash

#author - rajeshroy402@gmail.com

echo "We will install dependencies for DeepStream-6.0 in this process"
mkdir ~/nvidia-debians-by-rajesh
sudo apt update -y
sudo apt install libssl1.0.0 libgstreamer1.0-0 gstreamer1.0-tools gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav libgstrtspserver-1.0-0 libjansson4 gcc make git python3 -y
sudo apt-get install gcc make git libtool autoconf autogen pkg-config cmake
sudo apt-get install python3 python3-dev python3-pip
sudo apt-get install linux-headers-$(uname -r)
#Downloading NVIDIA Gefore Drivers
cd ~/nvidia-debians-by-rajesh
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/470.63.01/NVIDIA-Linux-x86_64-470.63.01.run
#Downloading CUDA 11.4
cd ~/nvidia-debians-by-rajesh
wget https://developer.download.nvidia.com/compute/cuda/11.4.3/local_installers/cuda_11.4.3_470.82.01_linux.run
sudo apt install python3-pip -y
sudo pip3 install gdown
source ~/.bashrc
#Downloading DeepStream-6.0 debian
cd ~/nvidia-debians-by-rajesh
gdown https://drive.google.com/uc?id=1yOOXVQZumiSt3OR93nsFcuRwmQ7ibRIE
# Downloading TensorRT debian
cd ~/nvidia-debians-by-rajesh
gdown https://drive.google.com/uc?id=1SuyTbdTs26Ss6NGNk5222ntWO9BoGbiZ
sudo echo -e "blacklist nouveau\noptions nouveau modeset=0" >> sudo nano /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u

echo -e "Please restart your device now: \nUse 'sudo reboot now'"
