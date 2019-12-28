#!/usr/bin/env python3

# a driver program that will often be included to grade your program
# NOTE: 213 specific

from subprocess import check_output

print("Testing correctness of Hello_World...", end = ' ')
num_tests_passed = 0

if (check_output(['./Hello_World']) == b'Hello World!\n'):
    num_tests_passed += 1
    print("PASSED")
else:
    print("FAIL")

print("%d/1 Cases Passed" %num_tests_passed)
