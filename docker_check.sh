#!/bin/sh
val=$(sudo docker ps | wc -l)
if [ $val -gt 1 ]
then
        val2=$(sudo docker rm -f $(sudo docker ps -a -q))
else
        echo "No docker container running"
fi
