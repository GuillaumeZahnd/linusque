# Fresh install kata

### Update, upgrade, autoremove

```sudo apt update```<br>
```sudo apt upgrade```<br>
```sudo apt install build-essential```<br>
```sudo apt autoremove```
```sudo reboot```

### Install and configure i3

```sudo apt install i3```<br>
Edit `~.config/i3/config`

### Install and configure vim

```sudo apt install vim vim-athena```<br>
Create and edit `~/.vimrc` and ``<br>
```sudo cp ~/.vimrc /root/.vimrc```

### Install (core)

```sudo apt install git nemo net-tools```

### Install (utils)

```sudo apt install gimp inkscape meld```

### Install (dev)

```sudo apt install pipenv```

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
