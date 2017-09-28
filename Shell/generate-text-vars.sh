#!bin/bash/
#Bash script for generating repetitive/sequential variable name and or file names

i=0
for i in {0..23}
do
    #grep "Thread $((i))" mobo1_results.txt | awk '{print $3}' > mobo1_thread$((i))_iters.txt
    #grep "Thread $((i))" mobo2_results.txt | awk '{print $6}' > thread$((i))_tscdelta.txt
    #echo "thread$((i)) <- read.csv(\"thread$((i))_iters.txt\", header=FALSE)\$V1"
    #echo "tscdelta$((i)) <- read.csv(\"thread$((i))_tscdelta.txt\", header=FALSE)\$V1"
    #echo -n "thread$((i)),"
    #echo -n "tscdelta$((i)),"
    #echo "thread$((i)) <- (thread$((i))/max_iterations)"
    #echo -n "mobo1_thread$((i)), mobo2_thread$((i))"
    echo -n "mobo1_thread$((i)),"
    #echo -n "\"M1:$((i))\",\"M2:$((i))\""
done
i=0
for i in {0..23}
do
    #grep "Thread $((i))" mobo1_results.txt | awk '{print $3}' > mobo1_thread$((i))_iters.txt
    #grep "Thread $((i))" mobo2_results.txt | awk '{print $6}' > thread$((i))_tscdelta.txt
    #echo "thread$((i)) <- read.csv(\"thread$((i))_iters.txt\", header=FALSE)\$V1"
    #echo "tscdelta$((i)) <- read.csv(\"thread$((i))_tscdelta.txt\", header=FALSE)\$V1"
    #echo -n "thread$((i)),"
    #echo -n "tscdelta$((i)),"
    #echo "thread$((i)) <- (thread$((i))/max_iterations)"
    #echo -n "mobo1_thread$((i)), mobo2_thread$((i))"
    echo -n "mobo2_thread$((i)),"
    #echo -n "\"M1:$((i))\",\"M2:$((i))\""
done
echo
