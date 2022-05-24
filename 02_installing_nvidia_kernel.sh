#! /bin/bash

#author - rajeshroy402@gmail.com
sudo echo "Hi, let's install NVIDIA DISPLAY DRIVER here!"
cd ~/nvidia-debians-by-rajesh
# Installing NVIDIA KERNEL
sudo apt install libglvnd-dev -y
sudo apt install pkg-config -y
chmod 755 NVIDIA-Linux-x86_64-470.103.01.run
sudo ./NVIDIA-Linux-x86_64-470.103.01.run

echo "Please reboot your device now"
