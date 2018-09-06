%% Power Digit Sum -- Solved
clear, close, clc, disp(mfilename), tic;

Number = sym(2^1000);

StringNum = char(Number);
Digits = [];

Limit = length(StringNum);

for i = 1:Limit
    Digits(i) = str2num(StringNum(i));
end

Solution = sum(Digits);

fprintf('The sum of the digits of 2^1000 is: %d\n', Solution); toc;