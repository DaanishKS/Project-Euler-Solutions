# Sum Square Difference -- Solved
# Solution = 25164150

from Timer import Timer
Stopwatch = Timer()

SumOfSquares = sum(n**2 for n in range(1,101))
SumSquared = sum(n for n in range(1,101))**2

Solution = SumSquared - SumOfSquares

print('The difference between the sum of the squares and the square of the sums is: ', Solution)
Stopwatch.stop()
