%% Sum Square Difference -- Solved
clear, close, clc, disp(mfilename), tic;

Terms = 1:100;
SquaredTerms = [];

for i = 1:100
    SquaredTerms(i) = (Terms(i))^2;
end

SquaredSum = (sum(Terms))^2;
SumSquaredTerms = sum(SquaredTerms);
Solution = SquaredSum - SumSquaredTerms;

fprintf(['The difference between the sum of the squares and the square of ' ...
    'the sums is: %d\n'], Solution); toc;