#!/bin/bash

dispatcher_script="/etc/NetworkManager/dispatcher.d/wifi-connect-script"

echo "Creating dispatcher script at $dispatcher_script"

cat << 'EOF' | sudo tee -a "$dispatcher_script" > /dev/null
#!/bin/bash
INTERFACE="$1"
STATUS="$2"

if [ "$STATUS" = "up" ]; then
    SSID=$(iwgetid -r)
    if [ "$SSID" = "CDWiFi" ]; then
        URL="http://cdwifi.cz/portal/api/vehicle/gateway/user/authenticate?category=internet&url=http%3A%2F%2Fcdwifi.cz%2Fportal%2Fapi%2Fvehicle%2Fgateway%2Fuser%2Fsuccess"
        wget --quiet --spider "$URL" -O /dev/null && echo "Success" || echo "Failed"
    fi
fi
EOF

echo "Making the dispatcher script executable ..."
sudo chmod +x $dispatcher_script
echo "Script applied."
