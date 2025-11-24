# Guide: Fresh install kata

## Before installation: Create a bootable USB drive

- usb-creator-gtk
- UNetbootin

## During installation: Partition the disc(s)

- `/`: ext4, 50-100GB, Primary, Beginning of this space
- `/home`: ext4, Primary, Beginning of this space
- `efi`: 650MB, Primary, Beginning of this space
- `swap`: (obsolete, now replaced by a "swap" file within "/root")

To boot from USB: Go to BIOS and change from `Legacy` to `UEFI`

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
sudo apt install linux-headers-$(uname -r)
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
sudo apt install gimp inkscape meld ristretto
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

### Install Python 3

```sh
sudo apt install python3 python3-wheel python3-venv python3-dev python3-setuptools
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

## Deep learning and GPU-related

### Install NVIDIA drivers on Ubuntu

```sh
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo reboot
nvidia-smi
```
Note: instead of `autoinstall`, a specific version can be selected (usually, the "recommended" version without the `-open` tag):
```sh
sudo apt install nvidia-driver-<version>
```

```
sudo apt install nvidia-driver-530
```

### Install the CUDA toolkit

- https://pytorch.org/get-started/locally/ (verify first the compatible versions of PyTorch with the CUDA toolkit)
- https://developer.nvidia.com/cuda-downloads
- https://developer.nvidia.com/cuda-toolkit-archive
- https://docs.nvidia.com/cuda/cuda-installation-guide-linux (comprehensive guide)

https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=deb_local

https://docs.nvidia.com/cuda/cuda-installation-guide-linux/#why-do-i-see-nvcc-no-such-file-or-directory-when-i-try-to-build-a-cuda-application

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

Comprehensive guide with prerequisites:

- https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#prerequisites

*Note:* When entering the following command ...

```sh
sudo apt-get install libcudnn8=8.x.x.x-1+cudaX.Y
```

... the CUDA version `X.Y` is not the CUDA version installed on the machine (visible with `nvidia-smi` or `nvcc -V`), but the CUDA version corresponding to the downloaded CuDNN version (visible within the folder `/var/cudnn-local-xxx`).

Support matrix (shows association between "cuDNN Package" and "CUDA Toolkit Version")

- https://docs.nvidia.com/deeplearning/cudnn/support-matrix/index.html 

Download page:

- https://developer.nvidia.com/cudnn
- https://developer.nvidia.com/rdp/cudnn-archive


```sh
sudo reboot
```

Verify whether installation was successful:

- https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#verify
- If required, run `sudo apt-get install libfreeimage3 libfreeimage-dev`

### Install PyTorch

- https://pytorch.org/get-started/locally/
- https://pytorch.org/get-started/previous-versions/

Try:
```sh
python -c "import torch; print(torch.__version__)"
```

```sh
pip3 install torch torchvision torchaudio
```
