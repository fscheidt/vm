# vm files
bootstrap vm installation

## pre-requisites

```bash
sudo apt install tar
sudo apt install bzip2
sudo apt install -y build-essential dkms perl make gcc linux-headers-$(uname -r)
# reboot
sudo ./VBoxLinuxAdditions.run 
```

## stage 0
- create user home files and dirs
- upgrade system

```bash
./s0-init-home.sh
./s0-update.sh
```
restart terminal

## aditional resources
- https://github.com/fscheidt/binaries
- https://github.com/fscheidt/fonts
- https://github.com/fscheidt/settings
