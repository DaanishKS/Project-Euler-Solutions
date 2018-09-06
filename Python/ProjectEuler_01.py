# Multiples of 3 and 5 -- Solved
# Solution = 233168

from Timer import Timer
Stopwatch = Timer()

# Solution 1:
Solution = sum(Number for Number in range(1,1000) if Number % 3 == 0 or Number % 5 == 0)

# Solution 2:
# Solution = 0
#
# for Number in range(1,1000):
#     if Number % 3 == 0 or Number % 5 == 0:
#         Solution += Number

print('The sum of all of the multiples of 3 or 5 below 1000 is: ' + str(Solution))
Stopwatch.stop()
