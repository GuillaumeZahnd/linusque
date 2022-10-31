# Guide: Fresh install kata

## Before installation: Create a bootable USB drive

- usb-creator-gtk
- UNetbootin

## During installation: Apply partitioning

- `/`: ext4, 50-100GB, Primary, Beginning of this space
- `/home`: ext4, Primary, Beginning of this space
- `swap`: (obsolete, now replaced by a "swap" file within "/root")
- `efi`: 650MB, Primary, Beginning of this space

To boot from USB: Go to BIOS and change from "Legacy" to "UEFI"

## After installation: Update, upgrade, autoremove

```sh
sudo apt update
sudo apt full-upgrade
sudo apt autoremove
sudo apt autoclean
sudo reboot
```

### Install the kernel headers and development packages

```sh
sudo apt-get install linux-headers-$(uname -r)
```

## Misc.

### Install and configure i3

```sh
sudo apt install i3
```
Edit `~.config/i3/config`

### Install and configure vim

```sh
sudo apt install vim vim-athena
```
Create and edit `~/.vimrc`<br>
```sh
sudo cp ~/.vimrc /root/.vimrc
```

### Install Git

```sh
sudo apt install git
```

### Install (core)

```sh
sudo apt install nemo net-tools
```

### Install (utils)

```sh
sudo apt install gimp inkscape meld
```

### Install development tools

```sh
sudo apt install build-essential
```

### Enable remore SSH connection

```sh
sudo apt install openssh-server
```

### Install the Samba protocol to mount network drives

```sh
sudo apt install cifs-utils smbclient
```

## Deep learning

### Install Python 3

```sh
sudo apt install python3 python3-wheel python3-pip python3-venv python3-dev python3-setuptools
```

### Install NVIDIA drivers on Ubuntu

```sh
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo reboot
```
Note: instead of `autoinstall`, a specific version can be selected:
```sh
sudo ubuntu-drivers nvidia-drivers-<version>
```

### Install the CUDA toolkit

- https://pytorch.org/get-started/locally/ (verify first the compatible versions of PyTorch with the CUDA toolkit)
- https://developer.nvidia.com/cuda-downloads
- https://developer.nvidia.com/cuda-toolkit-archive
- https://docs.nvidia.com/cuda/cuda-installation-guide-linux (comprehensive guide)

```sh
sudo reboot
```

Try:
```sh
nvcc -V
```
If the command is not recognized and the following error message shows up:
> Command 'nvcc' not found, but can be installed with:
> sudo apt install nvidia-cuda-toolkit

Append:
```sh
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
```
To `~/.bashrc`

### Install cuDNN

- https://developer.nvidia.com/cudnn
- https://developer.nvidia.com/rdp/cudnn-archive
- https://docs.nvidia.com/cuda/cuda-installation-guide-linux (comprehensive guide)
- https://docs.nvidia.com/deeplearning/cudnn/support-matrix/index.html (shows association between "cuDNN Package" and "CUDA Toolkit Version")

```sh
sudo reboot
```

### Install pip

```sh
sudo apt install python3-pip
```

### Install pipenv

```sh
python3 -m pip install --user pipenv
```
Try:
```sh
pipenv --version
```
If the command is not recognized and the following error message shows up:
> Command 'pipenv' not found, but can be installed with:
> sudo apt install pipenv

Append:
```sh
export PATH="${HOME}/.local/bin:$PATH"
```
To `~/.bashrc`

