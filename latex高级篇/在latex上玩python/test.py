#!/usr/bin/env python3
# -*- coding: utf-8 -*-

##################################
#序言部分
import math
import random


import shelve
###################################
#程序正式开始
#bob = {'name': 'Bob Smith', 'age': 42, 'pay': 30000, 'job': 'dev'}
#sue = {'name': 'Sue Jones', 'age': 45, 'pay': 40000, 'job': 'hdw'}
tom = {'pay': 0, 'job': None, 'age': 50, 'name': 'Tom'}
db = shelve.open('people-shelve')
#db['bob']  = bob
#db['sue'] = sue
sue = db['sue']
sue['pay'] *= 1.50
db['sue'] = sue
db['tom'] = tom
for key in  db:
    print(key , '⇒\n   ', db[key])
db.close()





#if __name__ == '__main__': #if run as script
    #main()
