# Largest Palindrome Product -- Solved
# Solution = 906609

from Timer import Timer
Stopwatch = Timer()

Solution = 0
for i in range(100, 1000):
    for j in range(100, 1000):
        n = i*j

        if str(n) == str(n)[::-1] and n > Solution:
            Solution = n

print('The largest palindrome that can be made from the product of two three-digit numbers is: ', Solution)
Stopwatch.stop()
