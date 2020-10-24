#!/bin/sh
val=$(sudo docker ps | wc -l)
val2=$(sudo docker rm -f $(sudo docker ps -a -q))
if [ $val -gt 1 ]
then
	 $val2
else
	echo "No docker container running"
fi
