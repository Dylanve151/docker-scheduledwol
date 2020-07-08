#!/bin/bash
#WOL

for MAC in $MAC_ADDRESS
do  
  wakeonlan -i $BROADCAST_IP $MAC
done