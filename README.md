# Hello and welcome to DeepStream SDK-6.3 on Ubuntu 20.04 LTS installation guide!!!

In this guide we will walk you through an entire process of installing DeepStream SDK in your dGPU system. Before you proceed, you need to have the below mentioned prequisites fulfilled to complete installation setup successfully.

* Ubuntu 20.04 OS
* More than 40 GB of installation space
* NVIDIA Geforce graphics card

## If your system meets the above requirements, follow below mentioned steps:
### Step 1:
Clone the repository in your Ubuntu system.

```
git clone https://github.com/rajeshroy402/DeepStream-dGPU-Installation.git
```

#### If you want to uninstall existing setup, follow below command:
```
cd DeepStream-dGPU-Installation
git checkout 20.04-6.3
sudo bash ./01_prepare.sh 
```

Once your process is executed, reboot your system.

### Step 2:
Install dependencies and download the required setup files for DeepStream SDK installation. <br />
Note: This will required an active internet connection as it will download files of more than 5 GB size

Go to the DeepStream-dGPU-Installation folder and run the below command:

```
sudo bash ./02_download_files.sh
```


### Step 3:

Now we will install NVIDIA DRIVER in your system. <br/>

```
sudo bash ./03_install-drivers.sh
```
Great, now you need to reboot your system again to confirm installation of drivers. <br/>
You can check your installation by running :  `nvidia-smi` on the terminal

### Step 4:
In this step we will install CUDA and TensorRT and DeepStream-6.3 <br/>

Go to the DeepStream-dGPU-Installation folder and run the below command:

```
sudo bash ./04_install-final-softwares.sh
```

Congratulation - 
`Your DeepStream installation is completed!`


### Step 5:

Python bindings will come in the upcoming release.

# Upcoming:
I will soon include video sessions on how to work with DeepStream post installation. <br/>
The sessions will have teaching content to study DeepStream.

# Follow Us:

You can follow me on LinkedIN from here -> <a href="https://linkedin.com/IN/rajeshroy402">Rajesh Roy</a> <br/>
Follow the contributor from here -> <a href="https://www.linkedin.com/in/divyanka-thakur-366aa5194/">Divyanka Thakur</a>
