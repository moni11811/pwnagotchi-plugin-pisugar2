#!/bin/bash
trigger=$(<pwnagotchi.trigger)
if [ "$trigger" == 0 ]; then
 touch /root/.pwnagotchi-auto && systemctl restart pwnagotchi;
 echo "1" > pwnagotchi.trigger;
else
 touch /root/.pwnagotchi-manu && systemctl restart pwnagotchi;
 echo "0" > pwnagotchi.trigger;
fi
