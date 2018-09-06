%% Even Fibonacci Numbers -- Solved
clear, close, clc, disp(mfilename), tic;

Limit = 4000000;
FibonacciSet = [1,1];
SumValue = 0;

%% Solution 1: Use fibonacci() Function
% for i = 1:Limit
%     if fibonacci(i) > Limit
%         break;
%     end
%     
%     FibonacciSet(i) = fibonacci(i);   
% end

%% Solution 2: Use Loops
for i = 3:Limit
    FibonacciSet(i) = FibonacciSet(i-2) + FibonacciSet(i-1);
    
    if FibonacciSet(i) > Limit
        FibonacciSet(i) = 0;
        break;
    end
end

for i = FibonacciSet
    if rem(i,2) == 0
        SumValue = SumValue + i;
    end
end

%% Display Solution
fprintf(['The sum of all of the even terms in the Fibonacci sequence whose ' ...
    'values do not exceed four million is: %d\n'], SumValue); toc;