%% Lattice Paths -- Solved
clear, close, clc, disp(mfilename), tic;

%% Solution 1: Use Combinatorics
% 40 moves must be made in order to reach the opposite corner of the grid
% and so we must choose 20 of them as "down" after considering "right" to
% be a default state of sorts.
Solution = nchoosek(40,20);

%% Solution 2: Recursive Function -- Incomplete

%% Display Solution
fprintf('The number of lattice routes through a 20x20 grid is: %d\n', Solution); toc;