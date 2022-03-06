#! /bin/bash

cd /opt/nvidia/deepstream/deepstream/sources/
git clone https://github.com/NVIDIA-AI-IOT/deepstream_python_apps.git
cd deepstream_python_apps/bindings/
sudo apt install -y git python-dev python3 python3-pip python3.6-dev python3.8-dev cmake g++ build-essential \
    libglib2.0-dev libglib2.0-dev-bin python-gi-dev libtool m4 autoconf automake
git submodule update --init
cd ../3rdparty/gst-python/
./autogen.sh
sudo make
sudo make install
cd ../../bindings/
sudo mkdir build
cd build
cmake ..
sudo make
pip3 install ./pyds-1.1.0-py3-none*.whl
