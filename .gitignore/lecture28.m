%for loop
%Example: Write a MATLAB program to calculate the factorial of a number
clc
n=input('input the number \n');
fact = 1; % initialize
for i=1:n   %run the loop from 1 to n, and by default increment is 1, if yuo put n is 5 than loop goes upto 5
    fact=fact*i;
end
fprintf('factorial is: \n %d \n',fact);
    