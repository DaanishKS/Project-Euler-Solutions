%% Highly Divisible Triangular Number -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution 1: Use divisors() Function
Solution = 0;

for i = flip(1:12500)
    TriangleNumber = sum(1:i);
    
    Divisors = divisors(TriangleNumber);
    
    if length(Divisors) >  500
        Solution = TriangleNumber;
        break;
    end
end

%% Solution 2: Brute Force (?)
% TriangleNumber = 0;
% Solution = 0;
% 
% for i = 1:12500
%     Range = 1:i;
%     TriangleNumber = sum(Range);
%     
%     Factors = 0;
%     for j = 1:TriangleNumber
%         if rem(TriangleNumber,j) == 0
%             Factors = Factors + 1;
%             
%             if Factors > 500
%                 Solution = TriangleNumber;
%             end
%         end
%     end
%     
%     if Solution ~= 0
%         break;
%     end
% end

%% Display Solution
fprintf('The value of the first triangular number to have over 500 divisors is: %d\n', Solution); toc;