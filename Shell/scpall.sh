#!/bin/bash

#Written by Rigobert M.D.

#This script will allow a user to scp a file to every pi (in the cluster)

#Usage: ./scpall.sh [FILENAME] [PATH]

scp $1 pi@pi02:$2 

scp $1 pi@pi03:$2 

scp $1 pi@pi04:$2
