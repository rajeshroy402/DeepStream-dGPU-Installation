# Hello and welcome to DeepStream SDK-6.1 on Ubuntu 20.04 LTS installation guide!!!

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
git checkout 20.04-6.1
bash ./00_uninstall_exisiting_setup.sh
```

### Step 2:
Install dependencies and download the required setup files for DeepStream SDK installation. <br />
Note: This will required an active internet connection as it will download files of more than 3 GB size

```
cd Deepstream-dGPU-Installation
git checkout 20.04-6.1
bash ./01_dependencies.sh
```
Once your process is executed, reboot your system.

### Step 3:
Go to the DeepStream-dGPU-Installation folder
Now we will install NVIDIA DRIVER and CUDA in your system. <br/>

```
bash ./02_cuda-display-driver-installation.sh
```
Great, now you need to reboot your system again to confirm installation of drivers. <br/>
You can check your installation by running :  `nvidia-smi` and `nvcc --version` on the terminal

### Step 4:
In this step we will install TensorRT 8.2.5.1 <br/>

```
bash ./03_install_tensorrt.sh
```

### Step 5:
All set for DeepStream-6.1 installation. Let's do that now! <br/>

```
bash ./04_install-deepstream-6.1.sh
```
Congratulation - 
`Your DeepStream installation is completed!`


### Step 6:
Moving to the final step, DeepStream comes with python apps support as well. Let's finish that to get your IVA rolling up.

```
bash ./05_bindings.sh
```
Now you have your system ready to use DeepStream SDK 6.1 for your IVA driven usecase.

# Upcoming:
I will soon include video sessions on how to work with DeepStream post installation. <br/>
The sessions will have teaching content to study DeepStream.

# Follow Us:

You can follow me on LinkedIN from here -> <a href="https://linkedin.com/IN/rajeshroy402">Rajesh Roy</a> <br/>
Follow the contributor from here -> <a href="https://www.linkedin.com/in/divyanka-thakur-366aa5194/">Divyanka Thakur</a>
