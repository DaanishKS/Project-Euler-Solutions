%% Multiples of 3 and 5 -- Solved
clear, close, clc, disp(mfilename), tic;

Limit = 999;
SumValue= 0;

for i = 0:Limit
    if rem(i,3) == 0 || rem(i,5) == 0
        SumValue = SumValue + i;
    end
end

fprintf('The sum of all of the multiples of 3 or 5 below 1000 is: %d\n', SumValue); toc;