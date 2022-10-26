### Check SSH status

```systemctl status ssh```


### Search for a string

```grep -rn "<string>" <file(s)>```

```n```: show line number

```r```: recursive search

```i```: ignore case sensitivity

```w```: whole words only


### Simple listing of the current folder content

```find . -printf "%f\n" | sort```
