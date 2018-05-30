%LOOPS are matlab construct that permits us to execute a sequence of
%statements more than once.
%There are two types of loops (1) while loop (2) for loop
%The while loop code repeated an infinite number of iterations until
%some user specified condition is satisfied.
%The for loop code repeated for a specific number of times and
%the number of repetition is known before the loop start
%EXAMPLE: STATISTICAL ANALYSIS
%Implement an algorithm that reads in a set of measurements and calculates
%the mean of the input data set
clc
clear
N =0;  % for initialize
sum_x=0;  % for initialize
x=input('Enter First Value:');
while x>=0
    sum_x=sum_x+x;
    N=N+1;
    x=input('Enter Next value:');
end
mean_x=(sum-x)/(N);
fprintf('The mean of entered data is: %f \n',mean_x);