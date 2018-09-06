%% Summation Of Primes -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution 1: Use primes() Function
n = primes(2000000);
Solution = sum(n);

%% Solution 2: Loops -- Incomplete


%% Display Solution
fprintf('The sum of all prime numbers less than 2,000,000 is: %d\n', Solution); toc;