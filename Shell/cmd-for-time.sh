#!/bin/bash

#Written by Rigoberto M.D.
#This script will run a command for a certain ammount of time

#Start time will be now
START=`date +%s`
#This is the duration, in seconds.
DURATION=2

while [ $(( $(date +%s) - $DURATION )) -lt $START ];
do
    #insert command here
    echo "Hello, World!"
done

echo "Done"
