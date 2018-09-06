%% Number Letter Counts -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution 1: Use Nested Functions
Words = [1:1000]';

for i = 1:1000
    Words(i,2) = LetterCount(i);
end

Solution = sum(Words(:,2));

fprintf('The number of letters used from 1 to 1000 is: %d\n', Solution); toc;

%% Solution 2: -- Incomplete
% ONES = ['one','two','three','four','five','six','seven','eight','nine',...
%         'ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen', ...
%         'seventeen','eighteen','nineteen'];
% TENS = ['','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety'];
% 
% n = repmat(' ',1000,50);
% 
% for i = 1:1000
%     if i < 20
%         n(i,1) = ONES(i);
%     elseif i < 100
%         a = rem(n,10);
%         b = floor(n/10);
%         n(i,1) = [TENS(b),ONES(a)];
%     elseif i <= 1000
%         a = rem(n,10);
%         b = floor(n/10);
%         c = floor(n/100);
% 
%         if c == 0
%             n(i,1) = [ONES(c),'hundred']
%         else
%             n(i,1) = [ONES(c),'hundred','and',TENS(b),ONES(a)];
%         end
%     end
% end

%% Nested Functions
function Letters = LetterCount(n)
    Digits = int2str(n);
    Letters = 0;
    Size = length(Digits);
    DigitValue = zeros(1,4);
    
    for i = 1:Size
        switch Digits(i)
            case '1'
                Letters = Letters + length('one');
                DigitValue(i) = length('one');
            case '2'
                Letters = Letters + length('two');
                DigitValue(i) = length('two');
            case '3'
                Letters = Letters + length('three');
                DigitValue(i) = length('three');
            case '4'
                Letters = Letters + length('four');
                DigitValue(i) = length('four');
            case '5'
                Letters = Letters + length('five');
                DigitValue(i) = length('five');
            case '6'
                Letters = Letters + length('six');
                DigitValue(i) = length('six');
            case '7'
                Letters = Letters + length('seven');
                DigitValue(i) = length('seven');
            case '8'
                Letters = Letters + length('eight');
                DigitValue(i) = length('eight');
            case '9'
                Letters = Letters + length('nine'); 
                DigitValue(i) = length('nine');
        end
    end
    
    switch Size
        case 2
            Letters = Letters + Tens(Digits(1:2),DigitValue(1:2));
            
        case 3
            Letters = Letters + length('hundred') + length('and');
            if Digits(2:3) == '00'
                Letters = Letters - length('and');
            else
                Letters = Letters + Tens(Digits(2:3),DigitValue(2:3));
            end
            
        case 4
            Letters = Letters + length('thousand');
    end
    
    function CharCount = Tens(p,q)
        CharCount = 0;
        
        if p(1) == '1'
            switch p(2)
                case '0'
                    CharCount = CharCount + length('ten') - q(1) - q(2);
                case '1'
                    CharCount = CharCount + length('eleven') - q(1) - q(2);
                case '2'
                    CharCount = CharCount + length('twelve') - q(1) - q(2);
                case '3'
                    CharCount = CharCount + length('thirteen') - q(1) - q(2);
                case '4'
                    CharCount = CharCount + length('fourteen') - q(1) - q(2);
                case '5'
                    CharCount = CharCount + length('fifteen') - q(1) - q(2);
                case '6'
                    CharCount = CharCount + length('sixteen') - q(1) - q(2);
                case '7'
                    CharCount = CharCount + length('seventeen') - q(1) - q(2);
                case '8'
                    CharCount = CharCount + length('eighteen') - q(1) - q(2);
                case '9'
                    CharCount = CharCount + length('nineteen') - q(1) - q(2);
            end
            
        elseif p(2) ~= '0'
            switch p(1)
                case '2'
                    CharCount = CharCount + length('twenty') - q(1);
                case '3'
                    CharCount = CharCount + length('thirty') - q(1);
                case '4'
                    CharCount = CharCount + length('forty') - q(1);
                case '5'
                    CharCount = CharCount + length('fifty') - q(1);
                case '6'
                    CharCount = CharCount + length('sixty') - q(1);
                case '7'
                    CharCount = CharCount + length('seventy') - q(1);
                case '8'
                    CharCount = CharCount + length('eighty') - q(1);
                case '9'
                    CharCount = CharCount + length('ninety') - q(1);
            end
        
        elseif p(2) == '0'
            switch p(1)
                case '2'
                    CharCount = CharCount + length('twenty') - q(1);
                case '3'
                    CharCount = CharCount + length('thirty') - q(1);
                case '4'
                    CharCount = CharCount + length('forty') - q(1);
                case '5'
                    CharCount = CharCount + length('fifty') - q(1);
                case '6'
                    CharCount = CharCount + length('sixty') - q(1);
                case '7'
                    CharCount = CharCount + length('seventy') - q(1);
                case '8'
                    CharCount = CharCount + length('eighty') - q(1);
                case '9'
                    CharCount = CharCount + length('ninety') - q(1);
            end
        end
    end
end