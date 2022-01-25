"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

from lib2to3.pgen2.token import MINUS
from word2number import w2n
from num2words import num2words

a = input("Please choose your first number (zero to five): ")
b = input("Please choose your first number (zero to five): ")
c = input("What do you want to do?")
num1 = w2n.word_to_num(a)
num2 = w2n.word_to_num(b)
print (num1)
print (num2)
def minus(num1, num2, a, b, c):
    minus = num1-num2
    return a+""+c+""+b+"equal"+num2words(minus)
def plus(num1,num2,a,b,c):
    plus = num1+num2
    return a+" "+c+" "+b+" "+"equals"+" "+num2words(plus)
if (not a == 'zero' and not a == 'one' and not a == 'two' and not a == 'three' and not a == 'four' and not a == 'five') or (not b == 'zero' and not b == 'one' and not b == 'two' and not b == 'three' and not b == 'four' and not b == 'five') or (not c == 'plus' and not c == 'minus'):
    print("I am not able to answer this question. Check your input.")
elif c == "minus":
    print (minus (num1,num2,a,b,c))
elif c == "plus":
    print (plus (num1,num2,a,b,c))









