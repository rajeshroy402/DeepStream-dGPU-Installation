# Hello and welcome to DeepStream SDK installation guide!!!

In this guide we will walk you through an entire process of installing DeepStream SDK in your dGPU system. Before you proceed, you need to have the below mentioned prequisites fulfilled to complete installation setup successfully.

* Ubuntu 18.04 OS
* More than 20 GB of installation space
* NVIDIA Geforce graphics card

#### If you want to uninstall existing setup, follow below:
```
bash 00_uninstall_exisiting_setup.sh
```

## If your system meets the above requirements, follow below mentioned steps:
### Step 1:
Clone the repository in your Ubuntu system.

```
git clone https://github.com/rajeshroy402/DeepStream-6.0-dGPU-Installation.git
```

### Step 2:
Install dependencies and download the required setup files for DeepStream SDK installation. <br />
Note: This will required an active internet connection as it will download files of more than 3 GB size

```
cd Deepstream-6.0-dGPU-Installation
bash ./01_dependencies.sh
```
Once your process is executed, reboot your system.

### Step 3:
Go to the DeepStream-6.0-dGPU-Installation folder
Now we will install NVIDIA DRIVER in your system. <br/>
Note: This will open NVIDIA installation GUI in your terminal. You need to install it without x-config. If your system suggests any dependencies, please install them before proceeding with this step.

```
bash ./02_installing_nvidia_kernel.sh
```
Great, now you need to reboot your system again to confirm installation of drivers. <br/>
You can check your installation by running :  `nvidia-smi` on the terminal

### Step 4:
In this step we will install CUDA 11.4, TensorRT 8.0 and DeepStream-6.0 <br/>
At first the terminal will load a GUI to accept and install CUDA in your system. You need to uncheck NVIDIA DRIVER option while installing CUDA.

```
bash ./03_install_deepstream.sh
```
This time you do not reboot!!! 😄 <br/>
`Your DeepStream installation is completed!`


### Step 5:
Moving to the final step, DeepStream comes with python apps support as well. Let's finish that to get your IVA rolling up.

```
bash ./04_bindings.sh
```
Now you have your system ready to use DeepStream SDK 6.0 for your IVA driven usecase.

# Upcoming:
I will soon include video sessions on how to work with DeepStream post installation. <br/>
The sessions will have teaching content to study DeepStream.

# Follow Us:

You can follow me on LinkedIN from here -> <a href="https://linkedin.com/IN/rajeshroy402">Rajesh Roy</a> <br/>
Follow the contributor from here -> <a href="https://www.linkedin.com/in/divyanka-thakur-366aa5194/">Divyanka Thakur</a>
