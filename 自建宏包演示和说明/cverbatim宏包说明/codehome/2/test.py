
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

