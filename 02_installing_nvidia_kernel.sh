#! /bin/bash

#author - rajeshroy402@gmail.com
sudo echo "Hi, let's install NVIDIA DISPLAY DRIVER here!"
cd ~/nvidia-debians-by-rajesh
sudo apt install libglvnd-dev
sudo apt install pkg-config
# Installing NVIDIA KERNEL
chmod 755 NVIDIA-Linux-x86_64-510.47.03.run
sudo ./NVIDIA-Linux-x86_64-510.47.03.run

echo "Please reboot your device now"
