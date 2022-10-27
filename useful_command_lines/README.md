# Guide: Useful command lines

### Check SSH status

```sh
systemctl status ssh
```

### Show information about the GPU

```sh
sudo lshw -C display
lspci | grep VGA
lspci | grep -i nvidia
nvidia-smi
```

### Show where the open-source Nouveau drivers or the proprietary NVIDIA drivers are used
```sh
lsmod | grep nouveau
lsmod | grep nvidia
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

### Add a user

```sh
sudo useradd -s /bin/bash -d /home/<username>/ -m <username>
sudo passwd <username>
```
