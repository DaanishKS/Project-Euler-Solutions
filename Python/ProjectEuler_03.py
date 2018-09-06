# Largest Prime Factor -- Solved
# Solution = 6857

import math

from Timer import Timer
Stopwatch = Timer()

def PrimeDivide(n):
    for i in range(2, round(math.sqrt(n))):
        if n % i == 0:
            return i

    return n

Number = 600851475143

while True:
    p = PrimeDivide(Number)

    if p < Number:
        Number //= p
    else:
        break

print('The largest prime factor of the number 600851475143 is: ', Number)
Stopwatch.stop()
