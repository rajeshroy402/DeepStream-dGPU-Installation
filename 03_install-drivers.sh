
folder_path=~/files_by_rajesh

# Check if the folder exists
if [ -d "$folder_path" ]; then
    echo "Folder $folder_path exists. Proceeding to the next line."
else
    echo "Folder $folder_path does not exist. Running additional code first."
    sudo bash 02_download_files.sh

fi

cd ~/files_by_rajesh

system_info=$(sudo lshw -class system)

if [[ $system_info == *"Desktop Computer"* ]]; then
    sudo sh NVIDIA-Linux-x86_64-530.41.03.run --no-cc-version-check --silent --disable-nouveau --dkms --install-libglvnd --run-nvidia-xconfig    
else
    sudo sh NVIDIA-Linux-x86_64-530.41.03.run --no-cc-version-check --silent --disable-nouveau --dkms --install-libglvnd
fi

printf "Please restart your device now: \nUse 'sudo reboot now'\n"