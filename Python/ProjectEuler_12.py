# Highly Divisible Triangular Number -- Solved
# Solution = 76576500

import math

from Timer import Timer
Stopwatch = Timer()

Solution = 0

for i in range(12500,0,-1):
    TriangleNumber = sum(range(1,i))
    Divisors = 0
    for j in range(1, round(math.sqrt(TriangleNumber) + 1)):
        if TriangleNumber % j == 0:
            Divisors += 2
        if Divisors > 500:
            Solution = TriangleNumber
            break

print('The value of the first triangular number to have over 500 divisors is: ', Solution)
Stopwatch.stop()
