#!/bin/bash

#Script that will execute a command over SSH to a certain host.
#Can be easily modified to accomodate a list of hosts using a for loop.

hostname=$1
command=$2

ssh $hostname ' $command '

echo Done
