%% Largest Palindrome Product -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution 1:
% PalindromeSet = [];
% StringNum = '';
% ReverseStringNum = '';
% Counter = 1;
% 
% for i = 100:999
%     for j = 100:999
%         Number = i*j;
%         StringNum = int2str(Number);
%     
%         for k = 1:length(StringNum)
%             ReverseStringNum(length(StringNum) - k + 1) = StringNum(k);
%         end
%     
%         ReverseNum = str2double(ReverseStringNum);
%     
%         if Number == ReverseNum
%             PalindromeSet(Counter) = Number;
%             Counter = Counter + 1;
%         end        
%     end
% end

%% Solution 2: Use flip() Function
PalindromeSet = [];
StringNum = '';
ReverseStringNum = '';
Counter = 1;

for i = 100:999
    for j = 100:999
        Number = i*j;
        
        StringNum = int2str(Number);
        ReverseStringNum = flip(StringNum);
        ReverseNum = str2double(ReverseStringNum);
    
        if Number == ReverseNum
            PalindromeSet(Counter) = Number;
            Counter = Counter + 1;
        end        
    end
end

MaxPalindrome = max(PalindromeSet);

%% Display Solution
fprintf(['The largest palindrome that can be made from the product of two '...
    'three-digit numbers is: %d\n'], MaxPalindrome); toc;