#!/bin/bash
#crontab time

if [ -z "$CRONTIME" ]
then
	echo "No Crontime"
else
	echo "$CRONTIME root /root/wakeup.sh >> /root/log.log" > /etc/cron.d/wakeup
	echo "" >> /etc/cron.d/wakeup
fi
echo "$BROADCAST_IP" > BROADCAST_IP
echo "$MAC_ADDRESS" > MAC_ADDRESS
if [ -z "$TRIGGER_IP" ]
then
	echo "No Trigger IP"
else
	echo "$TRIGGER_IP" > TRIGGER_IP
fi
service cron start
tail -f /root/log.log
