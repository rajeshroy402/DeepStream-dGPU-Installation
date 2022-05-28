#! /bin/bash

#author - rajeshroy402@gmail.com
sudo echo "Hi, let's install NVIDIA DISPLAY DRIVER here!"
cd ~/nvidia-debians-by-rajesh
sudo apt install libglvnd-dev -y
sudo apt install pkg-config -y
# Installing NVIDIA KERNEL
chmod 755 NVIDIA-Linux-x86_64-510.47.03.run
sudo sh NVIDIA-Linux-x86_64-510.47.03.run --silent --no-nouveau-check --disable-nouveau --install-libglvnd

echo "Please reboot your device now"
