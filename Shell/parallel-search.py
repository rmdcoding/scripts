#!/bin/bash

#Written by Rigobert M.D.

#This script is an example of a pseudo parallel bash script.

#Usage: 


#This will split the file into 
split -d -n 4 randlist.txt

#Spawn processes to process their parts of the file
sort -n x00 | tail -1 >> output.txt &
sort -n x01 | tail -1 >> output.txt &
sort -n x02 | tail -1 >> output.txt &
sort -n x03 | tail -1 >> output.txt &

wait

sort -n output.txt | tail -1
