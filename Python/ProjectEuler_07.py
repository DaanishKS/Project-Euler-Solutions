# 1001st Prime -- Solved
# Solution = 104743

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

Primes = [2]
n = 3

while len(Primes) <= 10001:
    if PrimeCheck(n):
        Primes.append(n)

    n += 2

Solution = Primes[10000]

print('The 10001st prime number is: ', Solution)
Stopwatch.stop()
