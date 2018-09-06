# Longest Collatz Sequence -- Solved
# Solution = 837799

from Timer import Timer
Stopwatch = Timer()

Solution = (0,0)
for i in range(1000000):
    n = i
    CollatzSequence = [n]

    while n > 1:
        if n % 2 == 0:
            n //= 2
        else:
            n = 3*n+1
        CollatzSequence.append(n)

    if len(CollatzSequence) > Solution[1]:
        Solution = (i, len(CollatzSequence))

print('The starting number under one million that produces the largest Collatz sequence is : ', Solution[0])
Stopwatch.stop()
