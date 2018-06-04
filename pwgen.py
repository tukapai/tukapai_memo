#!/usr/bin/env python
import getpass
import crypt
import hashlib
import random
pw = getpass.getpass()
salt = hashlib.sha1(str(random.random())).hexdigest()
print crypt.crypt( pw , "$1$" + salt + "$")
