#! /bin/bash

#author - rajeshroy402@gmail.com

# Installing CUDA
sudo echo "Hi, let's install CUDA TensorRT and DeepStream here!"
cd ~/nvidia-debians-by-rajesh

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update -y
sudo sh cuda_11.6.1_510.47.03_linux.run --silent --toolkit
sudo printf "export PATH=/usr/local/cuda-11.6/bin${PATH:+:${PATH}}\nexport LD_LIBRARY_PATH=/usr/local/cuda-11.6/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> /home/$USER/.bashrc
echo "Let's refresh the source file"
source ~/.bashrc
sudo ldconfig
echo "Printing your CUDA details to confirm"
nvcc --version

#Installing NVIDIA driver Optimius
sudo apt-get install nvidia-prime -y
echo "installed prime"
sudo prime-select nvidia

#Installing TensorRT

cd ~/nvidia-debians-by-rajesh
sudo rm /etc/apt/sources.list.d/*cuda*
sudo dpkg -i nv-tensorrt-repo-ubuntu2004-cuda11.4-trt8.2.5.1-ga-20220505_1-1_amd64.deb
sudo apt-key add /var/nv-tensorrt-repo-ubuntu2004-cuda11.4-trt8.2.5.1-ga-20220505/82307095.pub
sudo apt-get update -y
echo "let's do tensorrt now"
sudo apt install tensorrt -y

# Installing DeepStream SDK 6.1

cd ~/nvidia-debians-by-rajesh
echo "Let's install DS-6.1!"
sudo apt-get install ./deepstream-6.1_6.1.0-1_amd64.deb
rm ${HOME}/.cache/gstreamer-1.0/registry.x86_64.bin
sudo ln -snf /usr/local/cuda-11.6 /usr/local/cuda

echo "Installation is completed !!!"
echo "Please reboot your device"
