#! /bin/bash

#author - rajeshroy402@gmail.com

# Installing CUDA
sudo echo "Hi, let's install CUDA and Display Driver here!"

cd ~/nvidia-debians-by-rajesh
sudo apt install libglvnd-dev -y
sudo apt install pkg-config -y
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-key del 7fa2af80
sudo apt-get update -y

echo "let's start with CUDA-11.6"
#wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
#sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo add-apt-repository --remove "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo rm /etc/apt/sources.list.d/*cuda*
sudo dpkg -i cuda-repo-ubuntu2004-11-6-local_11.6.1-510.47.03-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-6-local/7fa2af80.pub
sudo apt-get update -y
sudo apt-get -y install cuda
sudo printf "export PATH=/usr/local/cuda-11.6/bin${PATH:+:${PATH}}\nexport LD_LIBRARY_PATH=/usr/local/cuda-11.6/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> /home/$USER/.bashrc
echo "Let's refresh the source file"
source /home/$USER/.bashrc
sudo ldconfig
echo "Printing your CUDA details to confirm"

sudo apt-get install nvidia-prime -y
echo "installed prime"
sudo prime-select nvidia

nvcc --version


