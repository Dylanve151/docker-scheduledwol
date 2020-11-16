#!/bin/bash
#startup script

echo "$BROADCAST_IP" > BROADCAST_IP
echo "$MAC_ADDRESS" > MAC_ADDRESS
if [ -z "$TRIGGER_IP" ]
then
	echo "No Trigger IP" >> log.log
else
	echo "$TRIGGER_IP" > TRIGGER_IP
fi
service cron start
tail -f log.log
