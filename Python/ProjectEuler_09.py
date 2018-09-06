# Special Pythagorean Triplet -- Solved
# Solution = 31875000

from Timer import Timer
Stopwatch = Timer()

Solution = 0

for i in range(1,1001):
    for j in range(1,1001):

        k = 1000 - i - j
        # Alt. Expression: k = (i**2 + j**2)**0.5

        if i**2 + j**2 == k**2 and i + j + k == 1000:
            Solution = i*j*k
            break;

print('The product of the pythagorean triplet whose sum is 1000 is: ', Solution)
Stopwatch.stop()
