%% Smallest Multiple -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution 1: -- Incomplete
% Factors = [1:20];
% Dividers = zeros(1,20);
% 
% for i = 2:20
%     for j = 2:20
%         if Factors(i) ~= j && rem(Factors(i),j) == 0
%             Dividers(i) = j;
%         end
%     end
% end
% 
% for i = 2:20
%     for j = 2:20
%         if Factors(i) == Dividers(j)
%             Factors(i) = 1;
%         end
%     end
% end
% 
% Solution = prod(Factors);

%% Solution 2: Use lcm() Function
n = 1;
Limit = 20;

for i = 2:Limit
    n = lcm(n,i);
end

Solution = n;

%% Display Solution
fprintf(['The least common multiple of all of the numbers from 1 to 20 is: %d\n'], Solution); toc;