#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#前面是序言部分
##################################


###################################
#程序正式开始
#bob = ['Bob Smith',42,30000,'software']
#sue = ['Sue Jones',45,40000,'hardware']

#sue[2] *= 1.25

#people = [bob,sue]
#for person in people:
    #print(person)
#这个语句格式如果你熟悉common-lisp语言的loop宏就会觉得很眼熟，简单来说
#就是遍历列表的迭代模式。大概就是car  cadr caddr之类的

#for person in people:
    #print(person[0].split()[-1])
    #person[2] *= 1.20
#str.split(',') 表示对一个字符串进行分割操作，其中分隔符就是','如果空著的话就是空格或者换行符或者什么的。
#列表元素编号是0 1 2... -1表示最后一个。

#for person in people : print(person[2])

#pays = [person[2] for person in people]
#这个有点类似于loop宏的collect命令，person in people 迭代，然后收集person[2]
#person[2] for person in people
#是一个所谓的 generator object 类似于惰性列表


#pays = map((lambda x : x[2]) , people)
#print(list(pays))
#map 熟悉lisp语言的都知道这是将一个操作作用于一个列表
#然后生成的是一个map  object，用list函数将其转化为列表。

#sum(person[2] for person in people)
#这个其实类似于lisp语言的(+ 1 1 1) ，只是这里换成了sum函数，然后同样作用于一个列表。

#people.append(['Tom',50,0,None])
#append的列表附加操作
#len(people)

#NAME,AGE,PAY=range(3)
#多个变量赋值或者iterator对象赋值
#这里range(3) 在python3中是产生一个interator对象
#只有外面加上list函数才变成列表
#bob[NAME]
#给列表各个field数值加个标签方便阅读
#print('''##############
#字典  属性和值
#####################''')
#bob = {'name':'Bob Smith','age':42,'pay':30000,'job':'dev'}
#sue = {'name':'Sue Jones','age':45,'pay':40000,'job':'hdw'}


#people = [bob, sue]
#for person in people:
    #print(person['name'],person['pay'],sep=', ')

#for person in people:
    #if person['name'] == 'Sue Jones':
        #print(person['pay'])

#names = [person['name'] for person in people]

## for  in 语句产生一个迭代器 用方括号括起来即为一个列表

##map函数产生一个map对象，用list命令生成一个列表对象。

#list(map((lambda x : x['name']),people))

#sum(person['pay'] for person in people)

#[rec['name'] for rec in people if rec['age'] >= 45]

#[(rec['age'] ** 2 if rec['age'] >= 45 else rec['age']) for  rec in people]

#G = (rec['name'] for rec in people if rec['age'] >= 45)
#next(G)

#bob2 = {'name' : {'first': 'Bob', 'last': 'Smith'},
#'age' : 42,
#'job' : ['software', 'writing'],
#'pay' : (40000, 50000)}

#print(bob2['name']['last'])
#print(bob2['pay'][1])

#for job in bob2['job']:
    #print(job)

#bob2['job'].append('janitor')
#print(bob2)

bob = dict(name='Bob Smith', age=42, pay=30000, job='dev')
sue = dict(name='Sue Jones', age=45, pay=40000, job='hdw')

db={}
db['bob'] = bob
db['sue'] = sue

print(db['bob']['name'])

print(db)

import pprint

pprint.pprint(db)

db['tom'] = dict(name='Tom', age=50, job=None, pay=0)

pprint.pprint(db)

#if __name__ == '__main__':
#如果以脚本运行，也就是这个文件单独运行而不是import。







