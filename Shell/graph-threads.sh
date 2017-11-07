#!/bin/bash/

#Written by Rigoberto M.D.

#This script will parse the cycle iterations of each thread and place them
#in a file. 

for i in {0..23} #change the 2nd number to change the range of thread numbers
do
    grep "Thread $((i)):" ubuntu_mobo2.txt | awk '{print $3}' > mobo2_thread$((i))_iters.txt;
    grep "Thread $((i)):" ubuntu_mobo1.txt | awk '{print $3}' > mobo1_thread$((i))_iters.txt;
    #sort thread$((i))_iters.txt | awk 'FNR==1557 {print}' >> iter_medians;
done
grep "total iterations" ubuntu_mobo2.txt | awk '{print $3}' > mobo2_total_iterations.txt;
grep "total iterations" ubuntu_mobo1.txt | awk '{print $3}' > mobo1_total_iterations.txt;
