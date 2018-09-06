# Even Fibonacci Numbers -- Solved
# Solution = 4613732

from Timer import Timer
Stopwatch = Timer()

# Solution 1:
# Limit = 4000000
# FibonacciSet = [1, 1]
#
# for i in range(2, Limit):
#     FibonacciSet.append(FibonacciSet[i - 1] + FibonacciSet[i - 2])
#
#     if FibonacciSet[i] > Limit:
#         FibonacciSet[i] = 0
#         break
#
# Solution = sum(n for n in FibonacciSet if n % 2 == 0)

# Solution 2:
# def Fibonacci(n):
#     if n <= 1:
#         return n
#     else:
#         return Fibonacci(n-1) + Fibonacci(n-2)
#
# Limit = 4000000
# Solution = 0
#
# for i in range(1, Limit):
#     if Fibonacci(i) > Limit:
#         break
#     if Fibonacci(i) % 2 == 0:
#         Solution += Fibonacci(i)

# Solution 3:
Limit = 4000000
Solution = 0
n, p = 0, 1

while n <= Limit:
    if n % 2 == 0:
        Solution += n

    n, p = p, (n+p)

print('The sum of all of the even terms in the Fibonacci sequence whose values do not exceed four million is: ', Solution)
Stopwatch.stop()
