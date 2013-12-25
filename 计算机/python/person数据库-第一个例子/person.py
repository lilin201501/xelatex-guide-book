
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

##################################
#序言部分


from classtools import AttrDisplay
class Person(AttrDisplay):
    def __init__(self, name, job=None, pay=0):
        self.name = name
        self.job = job
        self.pay = pay
    def lastname(self):
        return self.name.split()[-1]
    def giveraise(self,percent):
        self.pay = int(self.pay * (1+percent))
#    def __repr__(self):
#        return '[Person: %s,%s]' % (self.name,self.pay)


class Manager(Person):
    def __init__(self,name,pay):
        Person.__init__(self,name,'mgr',pay)
    def giveraise(self,percent,bonus=0.10):
        Person.giveraise(self,percent+bonus)


if __name__ == '__main__':
    bob = Person('Bob Smith')
    sue = Person('Sue Jones', job='dev', pay=100000)
    print(bob)
    print(sue)
    print(bob.lastname())
    sue.giveraise(0.10)
    print(sue)
    tom=Manager('Tom Jones',50000)
    tom.giveraise(0.10)
    print(tom.lastname())
    print(tom)

