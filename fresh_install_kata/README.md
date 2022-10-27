# Fresh install kata

### Bootable USB drive

- usb-creator-gtk
- UNetbootin

### Partitioning

- `/`: ext4, 50-100GB, Primary, Beginning of this space
- `/home`: ext4, Primary, Beginning of this space
- `swap`: (obsolete, now replaced by a "swap" file within "/root")
- `efi`: 650MB, Primary, Beginning of this space

To boot from USB: Go to BIOS and change "Legacy" to "UEFI"

### Update, upgrade, autoremove

```sudo apt update```<br>
```sudo apt upgrade```<br>
```sudo apt install build-essential```<br>
```sudo apt autoremove```<br>
```sudo reboot```

### Install and configure i3

```sudo apt install i3```<br>
Edit `~.config/i3/config`

### Install and configure vim

```sudo apt install vim vim-athena```<br>
Create and edit `~/.vimrc`<br>
```sudo cp ~/.vimrc /root/.vimrc```

### Install (core)

```sudo apt install git nemo net-tools```

### Install (utils)

```sudo apt install gimp inkscape meld```

### Install (dev)

### Enable remore SSH connection

```sudo apt install openssh-server```

### Mount network drives

```sudo apt install cifs-utils smbclient```

### Install NVIDIA drivers on Ubuntu

```ubuntu-drivers devices```<br>
```sudo ubuntu-drivers autoinstall``` or ```sudo ubuntu-drivers nvidia-drivers-<version>```<br>
```sudo reboot```

### Install the CUDA toolkit

- https://docs.nvidia.com/cuda/cuda-installation-guide-linux
- https://developer.nvidia.com/cuda-downloads

```sudo reboot```

Try:<br>
```nvcc -V```<br>
If the command is not recognized and the following error message shows up:
> Command 'nvcc' not found, but can be installed with:<br>
> sudo apt install nvidia-cuda-toolkit

Append:<br>
```export PATH="/usr/local/cuda/bin:$PATH"```<br>
```export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"```<br>
To `~/.bashrc`

### Install pip

```sudo apt install python3-pip```

### Install pipenv

```python3 -m pip install --user pipenv```<br>
Try:<br>
```pipenv --version```<br>
If the command is not recognized and the following error message shows up:
> Command 'pipenv' not found, but can be installed with:<br>
> sudo apt install pipenv

Append:<br>
```export PATH="${HOME}/.local/bin:$PATH"```<br>
To `~/.bashrc`

