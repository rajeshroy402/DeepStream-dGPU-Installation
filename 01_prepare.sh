#! /bin/bash

#This is created by Rajesh Roy (rajeshroy402@gmail.com)

echo "This repo is owned and managed by Rajesh Roy <rajeshroy402@gmail.com>"

############################################################

# install dependencies

sudo apt-get update -y
sudo apt-get install gcc make git libtool autoconf autogen pkg-config cmake -y
sudo apt-get install python3 python3-dev python3-pip -y
sudo apt-get install dkms -y
sudo apt install libssl1.1 libgstreamer1.0-0 gstreamer1.0-tools gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav libgstreamer-plugins-base1.0-dev libgstrtspserver-1.0-0 libjansson4 libyaml-cpp-dev libjsoncpp-dev protobuf-compiler -y
sudo apt-get install linux-headers-$(uname -r)

# purge existing files
sudo nvidia-uninstall -y
sudo $CUDA_PATH/bin/cuda-uninstaller
sudo apt-get remove --purge '*nvidia*' -y
sudo apt-get remove --purge '*cuda*' -y
sudo apt-get remove --purge '*cudnn*' -y
sudo apt-get remove --purge '*tensorrt*' -y
sudo apt-get remove --purge deepstream-* -y
sudo apt autoremove --purge -y && sudo apt autoclean -y && sudo apt clean -y

# removing old files

sudo rm -rf /usr/local/deepstream /usr/lib/x86_64-linux-gnu/gstreamer-1.0/libgstnv* /usr/bin/deepstream* /usr/lib/x86_64-linux-gnu/gstreamer-1.0/libnvdsgst*
/usr/lib/x86_64-linux-gnu/gstreamer-1.0/deepstream* /opt/nvidia/deepstream/deepstream*
sudo rm -rf /usr/lib/x86_64-linux-gnu/libv41/plugins/libcuvidv4l2_plugin.so
sudo rm -rf /usr/local/cuda*

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update -y

sudo rm /etc/modprobe.d/blacklist-nouveau.conf && sudo touch /etc/modprobe.d/blacklist-nouveau.conf
sudo printf "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u

sudo rmmod nvidia-drm

printf "Please restart your device now: \nUse 'sudo reboot now'\n"