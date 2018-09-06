%% Longest Collatz Sequence -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution:
Limit = 1000000;
CollatzSequences = [1:Limit]';

for i = 1:Limit
    n = i;
    for j = 2:Limit^2
        if n == 1
            break;
        end
        
        p = Collatz(n);
        n = p;
        CollatzSequences(i,j) = p;
    end
end

a = CollatzSequences';
b = a > 0;
c = sum(b);

Solution = find(c == max(c));

%% Display Solution
fprintf(['The starting number under one million that produces the largest ' ...
    'Collatz sequence is : %d\n'], Solution); toc;

%% Collatz()
function n2 = Collatz(n1)
    if rem(n1,2) == 0
        n2 = n1/2;
    else
        n2 = 3*n1+1;
    end
end