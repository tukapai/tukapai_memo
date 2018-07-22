#!/usr/bin/env python
# -*- coding: utf-8 -*-
import getpass
import crypt
import hashlib
import random
pw = getpass.getpass()
salt = hashlib.sha1(str(random.random())).hexdigest()
alg = 6
insalt = '${}${}$'.format(alg, salt)
print insalt
print crypt.crypt( pw , insalt )
