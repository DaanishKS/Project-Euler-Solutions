# Smallest Multiple -- Solved
# Solution = 232792560

import math

from Timer import Timer
Stopwatch = Timer()

def LCM(n,p):
    return (n*p) // math.gcd(n,p)

Solution = 1

for i in range(2, 21):
    Solution = LCM(Solution, i)

print('The least common multiple of all of the numbers from 1 to 20 is: ', Solution)
Stopwatch.stop()
