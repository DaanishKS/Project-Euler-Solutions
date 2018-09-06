# Summation Of Primes -- Solved
# Solution = 142913828922

import math

from Timer import Timer
Stopwatch = Timer()

def PrimeCheck(n):

    if n <= 1:
        return None

    if n % 2 == 0 and n != 2:
        return False
    elif n == 2:
        return True

    Factor = 3
    while Factor < round(math.sqrt(n)) + 1:
        if n % Factor == 0:
            if n != Factor:
                return False
        Factor += 2

    return True

Solution = 2

for n in range(3, 2000000, 2):
    if PrimeCheck(n):
        Solution += n

print('The sum of all prime numbers less than 2,000,000 is: ', Solution)
Stopwatch.stop()
