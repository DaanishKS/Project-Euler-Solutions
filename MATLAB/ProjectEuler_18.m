%% Maximum Path Sum I -- Not Solved
clear, close,  clc, disp(mfilename), tic;

%% Triangle
Triangle = [75 ...
            95 64 ...
            17 47 82 ...
            18 35 87 10 ...
            20 04 82 47 65 ...
            19 01 23 75 03 34 ...
            88 02 77 73 07 63 67 ...
            99 65 04 28 06 16 70 92 ...
            41 41 26 56 83 40 80 70 33 ...
            41 48 72 33 47 32 37 16 94 29 ...
            53 71 44 65 25 43 91 52 97 51 14 ...
            70 11 33 28 77 73 17 78 39 68 17 57 ...
            91 71 52 38 17 14 91 43 58 50 27 29 48 ...
            63 66 04 68 89 53 67 30 73 16 69 87 40 31 ...
            04 62 98 27 23 09 70 98 73 93 38 53 60 04 23];

%% Solution:
FormattedTriangle = zeros(15);
n = 0;
for i = 1:15
    for j = 1:i
        n = n+1;
        FormattedTriangle(i,j) = Triangle(n);
    end
end

% Bottom to top approach is needed

fprintf('The maximum total of the triangle from top to bottom is: %d\n', PathSum);
%% Greedy Algorithm: -- Produces incorrect solution
% FormattedTriangle = zeros(15);
% n = 0;
% for i = 1:15
%     for j = 1:i
%         n = n+1;
%         FormattedTriangle(i,j) = Triangle(n);
%     end
% end
% 
% SeedRow = FormattedTriangle(1,:);
% Position = 1;
% PathSum = 0;
% for i = 2:16
%     PathSum = PathSum + SeedRow(Position);
%     
%     if i == 16
%         break;
%     end
%     
%     NextRow = FormattedTriangle(i,:);
%     
%     if NextRow(Position) < NextRow(Position+1)
%         Position = Position + 1;
%     end
%     
%     SeedRow = NextRow;
% end
% 
% fprintf('The maximum total of the triangle from top to bottom is: %d\n',
% PathSum); toc;