# Guide: Useful command lines

### Check SSH status

```sh
systemctl status ssh
```

### Show display and graphics hardware

```sh
sudo lshw -C display
```

### Verify that the GPU is CUDA-capable

```sh
lspci | grep -i nvidia
```

### Show information about the GPU

```sh
lspci | grep VGA
nvidia-smi
```

### Show where the open-source Nouveau drivers or the proprietary NVIDIA drivers are used

```sh
lsmod | grep nouveau
lsmod | grep nvidia
```

### Change the default Python version

```sh
update-alternatives --list python
update-alternatives --install /usr/bin/python python /usr/bin/pythonX.Y 1
update-alternatives --config python
python -V
```

### Search for a string

```sh
grep -rn "<string>" <file(s)>
```

`n`: show line number<br>
`r`: recursive search<br>
`i`: ignore case sensitivity<br>
`w`: whole words only

### Simple listing of the current folder content

```sh
find . -printf "%f\n" | sort
```

or

```sh
ls -1
```

### Add a user

```sh
sudo useradd -s /bin/bash -d /home/<username>/ -m <username>
sudo passwd <username>
```

### Show Linux distro, version, and architecture

```sh
uname -m && cat /etc/*release
```

### Show Linux kernel version

```sh
uname -r
```

### Hash functions

```sh
sha256sum <filename>
md5sum <filename>
```

### Batch-resize a collection of images
```sh
find . -maxdepth 1 -iname "*.jpg" | xargs -L1 -I{} convert -resize 30% "{}" _resized/"{}"
```

### Firefox from ssh host
```sh
firefox --no-remote &
```
