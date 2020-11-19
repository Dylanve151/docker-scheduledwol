#!/bin/bash
#startup script

bash /root/addcronjob.sh

echo "$BROADCAST_IP" > /verbs/BROADCAST_IP
echo "$MAC_ADDRESS" > /verbs/MAC_ADDRESS
if [ -z "$TRIGGER_IP" ]
then
	echo "No Trigger IP" >> log.log
else
	echo "$TRIGGER_IP" > TRIGGER_IP
fi
service cron start
tail -f log.log
