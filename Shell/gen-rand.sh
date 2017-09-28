#!/bin/bash

#This script will generate a given amount random numbers.

for i in {1..100000};
do
    od -An -N4 -i < /dev/urandom
done
