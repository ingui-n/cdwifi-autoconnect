# CDWiFi Autoconnect

This script will automatically allow you to use CDWiFi without you having to complete the challenge of the terms and
conditions.

## GNU/Linux

### Requirements

- NetworkManager
- wget
- root privilege to create and edit files in `/etc/NetworkManager/dispatcher.d/`

### Installation

1. Download the cdwifi-autoconnect-setup.sh script.

```shell
wget https://raw.githubusercontent.com/ingui-n/cdwifi-autoconnect/refs/heads/master/cdwifi-autoconnect-setup.sh
```

2. Add execute permission to the script.

```shell
chmod +x cdwifi-autoconnect-setup.sh
```

3. Run the script with root privileges. If your system don't have sudo, you need to remove them from
   cdwifi-autoconnect-setup.sh file.

```shell
sudo ./cdwifi-autoconnect-setup.sh
```
