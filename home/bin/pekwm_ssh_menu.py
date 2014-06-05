#!/usr/bin/python3

#
# Generate pekwm dynamic menu for entries in ~/.ssh/config
#

import os
import re

SSH_CONFIG = os.getenv("HOME") + '/.ssh/config'

with open(SSH_CONFIG) as f:
    lines = f.readlines()


print("Dynamic {")

for line in lines:
    if line.startswith('# -----'):
        print('Separator {}')

    match = re.match( r'^\s*Host\s+(\S+)', line, re.I)
    if match:
        host = match.group(1)

    match = re.match( r'^\s*Hostname\s+(\S+)', line, re.I)
    if match:
        hostname = match.group(1)
        print('Entry = "{0}   -   {1}" {{ Actions = "Exec xterm -e ssh {0} &" }}'.format(host, hostname))

print("}")
