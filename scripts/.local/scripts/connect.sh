#!/bin/sh

vpn_link="https://www.vpnbook.com/free-openvpn-account/VPNBook.com-OpenVPN-FR8.zip"
img_link="https://www.vpnbook.com/password.php?t=0.78488200%201602952410"

curl -o "vpn.zip" $vpn_link
[ $? != 0 ] && (echo "[!] Failed to download vpn.zip"; exit)

curl -o "img.png" $img_link 
[ $? != 0 ] && (echo "[!] Failed to download img.png"; exit)

unzip -d "vpn" "vpn.zip"
rm vpn.zip

password=$(gocr -i "img.png")
echo "password(copied to clipboard): $password"
echo "$password" | xclip -selection clip
rm "img.png"

doas openvpn --config "vpn/vpnbook-fr8-udp25000.ovpn"

rm -rf "vpn/"
