# CDWiFi Autoconnect
![CD train](assets/cd-train.webp)

_Are you tired of waiting for 30 seconds add just to connect to Wi-Fi on a train
of [České dráhy](https://www.cd.cz/)?_

Fortunately, there is a simple solution to this problem.

Simply open this website in your web browser to access the Wi-Fi:

http://cdwifi.cz/portal/api/vehicle/gateway/user/authenticate?category=internet&url=http%3A%2F%2Fcdwifi.cz%2Fportal%2Fapi%2Fvehicle%2Fgateway%2Fuser%2Fsuccess

Don't forget to save it to your web browser's bookmarks 🙂

## What does it do?

Opening this page tells the CDWifi server, which manages device access, that your device has completed the terms
agreement challenge and is ready to use the internet.

The same request runs in the background when you click or tap `Continue` on the standard terms agreement website.

## Automated scripts

### GNU/Linux

This script runs when you connect to any network. If the connected network's SSID is `CDWiFi`, it will run an HTTP
request.

#### Requirements

- NetworkManager
- wget
- root privilege to create and edit files in `/etc/NetworkManager/dispatcher.d/`

#### Installation

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
