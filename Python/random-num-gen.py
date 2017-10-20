#!/usr/bin/env python

"""
Written by Rigoberto Moreno Delgado

This code snippet demonstrates how to generate
random numbers using the random python module.

"""

import random

def main():
    min = 0
    max = 1000000
    for i in range(min, max):
        random_num = random.randint(1, 1000000000)
        print(random_num)

# Start Main
if __name__ == "__main__":
    main()
