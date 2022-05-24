#! /bin/bash

#author - rajeshroy402@gmail.com

sudo echo "Started uninstalling dependencies"

sudo apt -y remove --purge "^libcuda.*"
sudo apt -y remove --purge "^cuda.*"
sudo apt -y remove --purge "^libnvidia.*"
sudo apt -y remove --purge "^nvidia.*"
sudo apt -y remove --purge "^tensorrt.*" 
sudo apt-get remove --purge '*nvidia*'
sudo apt-get remove --purge '*cuda*'
sudo apt-get remove --purge '*cudnn*'
sudo apt-get remove --purge '*tensorrt*'
sudo apt-get remove --purge deepstream-6.1


sudo apt-get -y --purge remove "*cublas*" "cuda*" "nsight*" 
sudo apt-get -y --purge remove "*nvidia*"
sudo apt remove -y --autoremove nvidia-cuda-toolkit
sudo apt autoremove --purge && sudo apt autoclean && sudo apt clean

# removing old files

sudo rm -rf /usr/local/deepstream /usr/lib/x86_64-linux-gnu/gstreamer-1.0/libgstnv* /usr/bin/deepstream* /usr/lib/x86_64-linux-gnu/gstreamer-1.0/libnvdsgst*
/usr/lib/x86_64-linux-gnu/gstreamer-1.0/deepstream*
/opt/nvidia/deepstream/deepstream*

sudo rm -rf /usr/lib/x86_64-linux-gnu/libv41/plugins/libcuvidv4l2_plugin.so

echo "Kindly reboot your device"
