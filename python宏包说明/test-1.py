
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

##################################
#序言部分
#import math
#import random


###################################
#程序正式开始
class FirstClass:
    def setdata(self,value):
        self.data=value#self is the instance
    def display(self):
        print(self.data)#self.data



x = FirstClass()
y = FirstClass()
x.setdata("King Arthur")#self is x
y.setdata(3.1415926)
x.display()
y.display()

class SecondClass(FirstClass):
    def display(self):
        print('Current value = "%s"'  % self.data)

z = SecondClass()
z.setdata(42)
z.display()

class ThirdClass(SecondClass):
    def __init__(self,value):
        self.data=value
    def __add__(self,other):# self+ other
        return ThirdClass(self.data+other)
    def __str__(self):#print(self)
        return '[ThirdClass:%s]' % self.data#ThirdClass
    def mul(self,other):
        self.data *= other



a = ThirdClass('abc')
a.display()
b = a + 'xyz'
b.display()

#if __name__ == '__main__': #if run as script

