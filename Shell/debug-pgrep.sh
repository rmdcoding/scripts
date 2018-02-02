#!/bin/bash

#Written by Rigobert M.D.


# *** THIS IS A DEBUG/TESTING SCRIPT ***

#Usage: ./debug-pgrep.sh [number of nodes] [pattern] [filename]

nodes=$1
end=$((nodes - 1)) 
filename=$3
pattern=$2

#Use new temp file
cat -n $filename > temp_par_grep_file.txt

#This will split the file into sizeable chunks based on nodes
split -d -n $nodes temp_par_grep_file.txt

#Spawn processes to process their parts of the file
for i in $(seq 0 $end);
do
    #Will show the line number that the patter was found in
    #Line number won't work here because of the offset caused
    #by splitting the file up. Will need to rework this.
    grep --color=always "$pattern" x0$((i)) >> par-grep-output.txt &
done

wait

#Show the file
cat par-grep-output.txt

#Remove the files created when done. This causes more latency than needed.
rm par-grep-output.txt x0* temp_par_grep_file.txt
