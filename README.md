# pihole-led
## Realtime LED alerts when an ad is blocked when using pi-hole.

http://www.nickbusey.com/installing-and-configuring-network-wide-adblock-with-pi-hole-and-the-turris-omnia/

pihole-led.sh will parse /var/log/pihole.log for the string "/etc/pihole/gravity.list" and if found it will turn on the User 1 LED briefly then turn it back off making it blink once for each entry found in near realtime.
