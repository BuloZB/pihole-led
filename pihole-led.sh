#!/bin/bash
###########
### This pihole-led script is built for the Turris Omnia
###########
### Version:        0.2
### Author:         Daniel Stinebaugh, Nick Busey
### Attribution:    http://www.stinebaugh.info/get-led-alerts-for-each-blocked-ad-using-pi-hole/
###                 http://nickbusey.com/

### Date:           12/04/2016
### License:        Copyleft. Enjoy!
###########
echo -n 0 >/sys/class/leds/omnia-led:user1/autonomous
echo -n 255 0 255 >/sys/class/leds/omnia-led:user1/color

tail -f /srv/lxc/pi-hole/rootfs/var/log/pihole.log | while read INPUT
do
    if [[ "$INPUT" == *"/etc/pihole/gravity.list"* ]]; then
        echo -n 255 >/sys/class/leds/omnia-led:user1/brightness
        sleep 0.2
        echo -n 0 >/sys/class/leds/omnia-led:user1/brightness
        sleep 0.1
    fi
done
