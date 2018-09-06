%% Special Pythagorean Triplet -- Solved
clear, close, clc, disp(mfilename), tic;

TripletCheck = @(a,b,c) (a^2+b^2==c^2 && a<b && a+b+c==1000);
SolutionTriplet = [];
Limit = 1000;

for i = 1:Limit
    for j = 1:Limit
        k = Limit-(i+j);
        if TripletCheck(i,j,k)
            SolutionTriplet = [i j k];
            break;            
        end
    end
end

fprintf('The product of the pythagorean triplet whose sum is 1000 is: %d\n', prod(SolutionTriplet)); toc;