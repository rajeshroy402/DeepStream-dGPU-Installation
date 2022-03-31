#! /bin/bash

#author - rajeshroy402@gmail.com

echo "Started uninstalling dependencies"

sudo apt -y remove --purge "^libcuda.*"
sudo apt -y remove --purge "^cuda.*"
sudo apt -y remove --purge "^libnvidia.*"
sudo apt -y remove --purge "^nvidia.*"
sudo apt -y remove --purge "^tensorrt.*" 

sudo apt-get -y --purge remove "*cublas*" "cuda*" "nsight*" 
sudo apt-get -y --purge remove "*nvidia*"
sudo apt remove -y --autoremove nvidia-cuda-toolkit

echo "Kindly reboot your device"
