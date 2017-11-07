#!/bin/bash

#This script will return the line and line number
#of lines that are over a certain length

#usage: ./get_lines_over_certain_char_length.sh [Max number of chars per line] [Filename]
#original command: grep -n '^.\{80\}' filename

line_size=$1
filename=$2
grep -n '^.\{'$line_size'\}' $filename
