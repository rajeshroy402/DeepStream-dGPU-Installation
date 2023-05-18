#! /bin/bash

#author - rajeshroy402@gmail.com

# Installing NVIDIA Display Driver

sudo echo "Hi, let's install CUDA and Display Driver here!"

cd ~/nvidia-debians-by-rajesh

sudo sh NVIDIA-Linux-x86_64-525.105.17.run --no-cc-version-check --silent --disable-nouveau --dkms --install-libglvnd --run-nvidia-xconfig

sudo apt-get install nvidia-prime -y
echo "installed prime"
sudo prime-select nvidia

sudo echo "Please reboot your system!"