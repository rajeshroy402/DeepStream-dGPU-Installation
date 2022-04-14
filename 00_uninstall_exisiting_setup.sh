#! /bin/bash

#author - rajeshroy402@gmail.com

echo "Started uninstalling dependencies"

sudo apt -y remove --purge "^libcuda.*"
sudo apt -y remove --purge "^cuda.*"
sudo apt -y remove --purge "^libnvidia.*"
sudo apt -y remove --purge "^nvidia.*"
sudo apt -y remove --purge "^tensorrt.*" 
sudo apt-get remove --purge '*nvidia*'
sudo apt-get remove --purge '*cuda*'
sudo apt-get remove --purge '*cudnn*'
sudo apt-get remove --purge '*tensorrt*'


sudo apt-get -y --purge remove "*cublas*" "cuda*" "nsight*" 
sudo apt-get -y --purge remove "*nvidia*"
sudo apt remove -y --autoremove nvidia-cuda-toolkit
sudo apt autoremove --purge && sudo apt autoclean && sudo apt clean

echo "Kindly reboot your device"
