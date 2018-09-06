%% Factorial Digit Sum -- Solved
clear, close,  clc, disp(mfilename), tic;

n = Factorial(100);
p = char(n);
q = [];

for i = 1:length(p)
    q(i) = str2num(p(i));
end

Solution = sum(q);

fprintf('The sum of the digits of the number 100! is: %d\n', Solution); toc;

%% Factorial() Function
function b = Factorial(a)
    if a > 1
        b = sym(a*Factorial(a-1));
    else
        b = 1;
    end
end