#! /bin/bash

#author - rajeshroy402@gmail.com

sudo echo "Hey, let's do the final hooby-dooby here!"
cd ~/nvidia-debians-by-rajesh
# Installing CUDA
sudo sh cuda_11.4.3_470.82.01_linux.run
sudo printf "export PATH=/usr/local/cuda-11.4/bin${PATH:+:${PATH}}\nexport LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> /home/$USER/.bashrc
source /home/$USER/.bashrc
sudo ldconfig
echo "Printing your CUDA details to confirm"
nvcc --version

#Installing NVIDIA driver Optimius
sudo apt-get install nvidia-prime
sudo prime-select nvidia

#Installing TensorRT
cd ~/nvidia-debians-by-rajesh
sudo echo "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda-repo.list
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-key add 7fa2af80.pub
sudo apt-get update -y
sudo dpkg -i nv-tensorrt-repo-ubuntu1804-cuda11.3-trt8.0.1.6-ga-20210626_1-1_amd64.deb
sudo apt-key add /var/nv-tensorrt-repo-ubuntu1804-cuda11.3-trt8.0.1.6-ga-20210626/7fa2af80.pub
sudo apt-get update -y
sudo apt-get install libnvinfer8=8.0.1-1+cuda11.3 libnvinfer-plugin8=8.0.1-1+cuda11.3 libnvparsers8=8.0.1-1+cuda11.3 libnvonnxparsers8=8.0.1-1+cuda11.3 libnvinfer-bin=8.0.1-1+cuda11.3 libnvinfer-dev=8.0.1-1+cuda11.3 libnvinfer-plugin-dev=8.0.1-1+cuda11.3 libnvparsers-dev=8.0.1-1+cuda11.3 libnvonnxparsers-dev=8.0.1-1+cuda11.3 libnvinfer-samples=8.0.1-1+cuda11.3 libnvinfer-doc=8.0.1-1+cuda11.3 -y

# Installing DeepStream SDK 6.0

cd ~/nvidia-debians-by-rajesh
sudo apt-get install ./deepstream-6.0_6.0.0-1_amd64.deb
rm ${HOME}/.cache/gstreamer-1.0/registry.x86_64.bin

echo "Installation is completed !!!"
echo "Please reboot your device"
