"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import random, string

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

for i in range(int(n)):
    longitud = [random.randint(int(a),int(b))]
    x = ''.join(random.choices(string.ascii_lowercase + string.digits, k=longitud[0]))
    print(x)