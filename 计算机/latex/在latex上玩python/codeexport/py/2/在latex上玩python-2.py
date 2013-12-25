
from sympy import *
x = symbols('x')
a = Integral(x, (x, 1, 2))
s = Eq(a, a.doit())
print('$'+ latex(s) + '$')

