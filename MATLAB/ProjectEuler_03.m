%% Largest Prime Factor -- Solved
clear, close, clc, disp(mfilename), tic;

Number = 600851475143;

%% Solution 1: Use factor() Function
p = factor(Number);
n = p(end);

%% Solution 2: Use PrimeDivide()
% n = Number;
% LoopControl = true;
% 
% while LoopControl
%     p = PrimeDivide(n);
%     if p < n
%         n = n / p;
%     else
%         LoopControl = false;
%     end
% end

%% Display Solution
fprintf('The largest prime factor of the number 600851475143 is: %d\n', n); toc;

%% PrimeDivide()
function factor = PrimeDivide(n)
TerminationFlag = false;

    for i = 2:sqrt(n)+1
        if rem(n,i) == 0
            factor = i;
            TerminationFlag = true;
            break;
        end
    end
    
    if TerminationFlag == false
        factor = n;
    end    
end