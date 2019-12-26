#!/usr/bin/env python3
# a trolling driver program.
from subprocess import check_output

print("Testing correctness of Hello_World...", end = ' ')

if (check_output(['./Hello_World']) == b'Hello World!\n'):
    print("PASSED\n1/1 Cases Passed")
else:
    print("FAIL\n0/1 Cases Passed")

