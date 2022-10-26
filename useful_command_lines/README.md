# Useful command lines

### Check SSH status

```systemctl status ssh```

### Show information about the GPU

```sudo lshw -C display```<br>
```lspci | grep VGA```<br>
```lspci | grep -i nvidia```<br>
```lsmod | grep nouveau``` (shows where Ubuntu is using the open-source Nouveau drivers)<br>
```lsmod | grep nvidia``` (shows where Ubuntu is using the proprietary NVIDIA drivers)<br>

### Search for a string

```grep -rn "<string>" <file(s)>```<br>
```n```: show line number<br>
```r```: recursive search<br>
```i```: ignore case sensitivity<br>
```w```: whole words only

### Simple listing of the current folder content

```find . -printf "%f\n" | sort```

### Add a user

sudo useradd -s /bin/bash -d /home/<username>/ -m <username><br>
sudo passwd <username>
