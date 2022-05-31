#! /bin/bash

#author - rajeshroy402@gmail.com

sudo echo "Started uninstalling dependencies"
sudo apt --fix-missing update
sudo apt --fix-broken install
sudo nvidia-uninstall
sudo $CUDA_PATH/bin/cuda-uninstaller
sudo apt-get remove --purge '*nvidia*' -y
sudo apt-get remove --purge '*cuda*' -y
sudo apt-get remove --purge '*cudnn*' -y
sudo apt-get remove --purge '*tensorrt*' -y
sudo apt autoremove --purge && sudo apt autoclean && sudo apt clean -y

sudo apt -y remove --purge "^libcuda.*" -y
sudo apt -y remove --purge "^cuda.*" -y
sudo apt -y remove --purge "^libnvidia.*" -y
sudo apt -y remove --purge "^nvidia.*" -y
sudo apt -y remove --purge "^tensorrt.*" -y
sudo apt-get remove --purge deepstream-6.1 -y


sudo apt-get -y --purge remove "*cublas*" "cuda*" "nsight*" -y 
sudo apt remove -y --autoremove nvidia-cuda-toolkit -y
sudo apt autoremove --purge && sudo apt autoclean && sudo apt clean -y

# removing old files

sudo rm -rf /usr/local/deepstream /usr/lib/x86_64-linux-gnu/gstreamer-1.0/libgstnv* /usr/bin/deepstream* /usr/lib/x86_64-linux-gnu/gstreamer-1.0/libnvdsgst*
/usr/lib/x86_64-linux-gnu/gstreamer-1.0/deepstream* /opt/nvidia/deepstream/deepstream*

sudo rm -rf /usr/lib/x86_64-linux-gnu/libv41/plugins/libcuvidv4l2_plugin.so
sudo rm -rf /usr/local/cuda*

echo "Kindly reboot your device"
