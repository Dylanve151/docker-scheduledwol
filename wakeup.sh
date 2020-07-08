#!/bin/bash
#WOL

if [ -z "$TRIGGER_IP" ]
then
  for MAC in $MAC_ADDRESS
  do  
    wakeonlan -i $BROADCAST_IP $MAC
  done
else
  until ping -c1 $TRIGGER_IP &>/dev/null; do :; done
  for MAC in $MAC_ADDRESS
  do  
    wakeonlan -i $BROADCAST_IP $MAC
  done
fi