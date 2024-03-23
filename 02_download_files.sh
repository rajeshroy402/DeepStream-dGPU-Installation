#! /bin/bash

#author - rajeshroy402@gmail.com

mkdir ~/files_by_rajesh
cd ~/files_by_rajesh
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/530.41.03/NVIDIA-Linux-x86_64-530.41.03.run
wget https://developer.download.nvidia.com/compute/cuda/12.1.1/local_installers/cuda_12.1.1_530.30.02_linux.run
wget --content-disposition 'https://api.ngc.nvidia.com/v2/resources/org/nvidia/deepstream/6.3/files?redirect=true&path=deepstream-6.3_6.3.0-1_amd64.deb' -O deepstream-6.3_6.3.0-1_amd64.deb
