# VirtualBox

Initialization for virtualbox ubuntu systems.

## Guest Additions

Provides functionalities such as shared clipboard, drag-and-drop, automatic window resolution, shared folders, and hardware-accelerated graphics.

```bash
sudo apt-get update && sudo apt-get upgrade -y
```

```bash
sudo apt install tar bzip2
```

```bash
sudo apt install -y build-essential dkms perl make gcc linux-headers-$(uname -r)
```

*reboot*

```bash
sudo ./VBoxLinuxAdditions.run 
```

*reboot*
