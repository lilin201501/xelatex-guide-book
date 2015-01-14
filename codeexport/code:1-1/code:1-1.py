
from sympy import *
a,b,c,x=symbols('a b c x')
ep1=diff(a*x**2+b*x+c,x)
ep2=integrate(a*x**2+b*x+c,x)
print('$$' + latex(ep1) + '$$', '$$' + latex(ep2) + '$$')

