# Fresh install kata

### Before installation: Create a bootable USB drive

- usb-creator-gtk
- UNetbootin

---

### During installation: Apply partitioning

- `/`: ext4, 50-100GB, Primary, Beginning of this space
- `/home`: ext4, Primary, Beginning of this space
- `swap`: (obsolete, now replaced by a "swap" file within "/root")
- `efi`: 650MB, Primary, Beginning of this space

To boot from USB: Go to BIOS and change from "Legacy" to "UEFI"

---

## After installation: Update, upgrade, autoremove

```sudo apt update```<br>
```sudo apt full-upgrade```<br>
```sudo apt autoremove```<br>
```sudo apt autoclean```<br>
```sudo reboot```

---

## Misc.

### Install and configure i3

```sudo apt install i3```<br>
Edit `~.config/i3/config`

### Install and configure vim

```sudo apt install vim vim-athena```<br>
Create and edit `~/.vimrc`<br>
```sudo cp ~/.vimrc /root/.vimrc```

### Install Git

```sudo apt install git```

### Install (core)

```sudo apt install nemo net-tools```

### Install (utils)

```sudo apt install gimp inkscape meld```

### Install development tools

```sudo apt install build-essential```

### Enable remore SSH connection

```sudo apt install openssh-server```

### Install the Samba protocol to mount network drives

```sudo apt install cifs-utils smbclient```

---

## Deep learning

### Install Python 3

```sudo apt install python3 python3-wheel python3-pip python3-venv python3-dev python3-setuptools```

### Install NVIDIA drivers on Ubuntu

```ubuntu-drivers devices```<br>
```sudo ubuntu-drivers autoinstall``` or ```sudo ubuntu-drivers nvidia-drivers-<version>```<br>
```sudo reboot```

### Install the CUDA toolkit

- https://pytorch.org/get-started/locally/ (verify first the compatible versions of PyTorch with the CUDA toolkit)
- https://developer.nvidia.com/cuda-downloads
- https://developer.nvidia.com/cuda-toolkit-archive
- https://docs.nvidia.com/cuda/cuda-installation-guide-linux (comprehensive guide)

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

### Install cuDNN

- https://developer.nvidia.com/cudnn
- https://developer.nvidia.com/rdp/cudnn-archive
- https://docs.nvidia.com/cuda/cuda-installation-guide-linux (comprehensive guide)
- https://docs.nvidia.com/deeplearning/cudnn/support-matrix/index.html (shows association between "cuDNN Package" and "CUDA Toolkit Version")

```sudo reboot```

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

