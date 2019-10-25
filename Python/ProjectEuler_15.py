# Lattice Paths -- Solved
# Solution = 137846528820

from Timer import Timer
Stopwatch = Timer()

import math

Solution = math.factorial(40) // (math.factorial(20) * math.factorial(40 - 20))

print('The number of lattice routes through a 20x20 grid is: ', Solution)
Stopwatch.stop()
