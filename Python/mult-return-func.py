#!/usr/bin/env python

'''
Written by Rigoberto Moreno Delgado

This code snippet demonstrates how a function
can have multiple return values and how to access
them.

'''

import datetime

def mult_ret():
    return "This", "is", "a", "string"

def main():

    ret = mult_ret()
    for i in range(len(ret)):
        print(ret[i])

    
# Start Main
if __name__ == "__main__":
    main()
