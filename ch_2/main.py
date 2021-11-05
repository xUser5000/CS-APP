import math
x = 0.24412
s= 1

def fact (n):
    result = 1.00000000
    for i in range(1, n+1):
        result = result * i
    return result

for i in range(300):
    s = s + ( (x**i) / fact(i) )
print(s)

