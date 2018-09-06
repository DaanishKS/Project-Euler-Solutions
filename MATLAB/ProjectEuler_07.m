%% 10001st Prime -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution 1: Use primes() Function
n = primes(10001^2);
Solution = n(10001);

%% Solution 2:
% n = [1];
% Counter = 1;
% 
% for i = 1:10001^2
%     if isprime(i) == true
%         n(Counter) = i;
%         Counter = Counter + 1;
%     end
% 
%     if length(n) == 10001
%         break;
%     end
% end
% 
% Solution = n(end);

%% Solution 3: -- Incomplete
% 
% n = 1:10001^2;
% p = [];
% Counter = 1;
% 
% for i = 2:10001^2/2
%     for j = 2:10001^2/2
%         if n(i) ~= n(j) && rem(n(i),j) == 0
%             p(Counter) = n(i);
%             Counter = Counter + 1;
%         end
%         
%         if length(p) == 10001
%             break;
%         end
%     end
% end
%     
% Solution = p(end);

%% Display Solution
fprintf('The 10001st prime number is: %d\n', Solution); toc;