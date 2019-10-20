#!/bin/bash
while true;
do
	clear;
	echo "DEVICE	T°C";
	echo "=======	====";
	paste <(cat /sys/class/thermal/thermal_zone*/type)\
		<(cat /sys/class/thermal/thermal_zone*/temp)\
		| column -s $'\t' -t | sed 's/\(.\)..$/.\1/'\
		| sed 's/_thermal//' | sed 's/^.* /\U&\E/g';
	sleep 3;
done
