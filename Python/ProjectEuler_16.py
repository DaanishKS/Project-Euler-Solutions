# Power Digit Sum -- Solved
# Solution = 1366

from Timer import Timer
Stopwatch = Timer()

Solution = sum([int(i) for i in str(2**1000)])

print('The sum of the digits of 2^1000 is: ', Solution)
Stopwatch.stop()
