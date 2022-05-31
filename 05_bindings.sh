#! /bin/bash

#author - divyanka.thakur16@gmail.com
sudo echo "Hi, let's start the bindings part!"

cd /opt/nvidia/deepstream/deepstream/sources/
sudo rm -rf deepstream_python_apps/
# Sync deepstream_python_apps repo from github
sudo git clone https://github.com/NVIDIA-AI-IOT/deepstream_python_apps.git
cd deepstream_python_apps/
sudo git submodule update --init
# DS 6.1
sudo git checkout v1.1.2

cd bindings/
#Download base dependencies
sudo apt install python3-gi python3-dev python3-gst-1.0 python-gi-dev git python-dev \
    python3 python3-pip python3.8-dev cmake g++ build-essential libglib2.0-dev \
    libglib2.0-dev-bin python-gi-dev libtool m4 autoconf automake -y

# Initialize submodules    
sudo git submodule update --init
# Installing Gst-python
sudo apt-get install -y apt-transport-https ca-certificates -y
sudo update-ca-certificates -y
cd ../3rdparty/gst-python/
sudo ./autogen.sh
sudo make
sudo make install
# Now building the bindings
cd ../../bindings/
sudo mkdir build
cd build
sudo cmake ..
sudo make
# Installing the pip wheel
sudo apt install libgirepository1.0-dev libcairo2-dev -y
sudo pip3 install ./pyds-1.1.2-py3-none*.whl

echo "You are ready to use the python apps now!"
echo "Run the below lines to test"
printf "cd deepstream_python_apps/apps/deepstream-test1\nsudo python3 deepstream_test_1.py <input .h264 file>\n"
