#!/bin/bash

#Written by Rigobert M.D.

#This script is an example of a parallel bash script, spawning processes.

#Usage: ./parallel-search.sh [number of nodes] [file containing numbers]  

nodes=$1
end=$((nodes - 1)) 
filename=$2

#This will split the file into sizeable chunks based on nodes
split -d -n $nodes $filename

#Spawn processes to process their parts of the file
for i in $(seq 0 $end);
do
    sort -n x0$((i)) | tail -1 >> parallel-output.txt &
done

wait

sort -n parallel-output.txt | tail -1

rm parallel-output.txt x0*
