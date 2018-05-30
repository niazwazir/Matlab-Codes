%THE if statement or The if construct also called if control
%EXAMPLE: Print the division corresponding to the marks enter by a student
%criteria marks>= 60   First Grade, 45=<Marks<60   second Grade
%30=<Marks<45  Third, Marks<30 Fails

marks = input('Enter the percentage marks:');
if(marks>=60)
    fprintf('First Division');
elseif(marks>=45&marks<60)
    fprintf('Second Division')
elseif(marks>=30&marks<45)
    fprintf('Third Division');
else
    fprintf('Fail')
end


%EXAMPLE: Write a Matlab program to evaluate a function f(x,y) for any two
%user specified values x and y. The function f(x,y) is defined as follows
%f(x,y) = x+y x>0 and y>0, x+y^2 x>0 and y<0; x^2 +y x<0 and y>0; x^2 + y^2
%x<0 and y<0

x=input('Enter the value of x');
y=input('Enter the value of y');
if(x>=0&&y>=0)
    fun=x+y
    fprintf('The value of function is: %f',fun);
elseif(x>=0&&y<0)
    fun=x+y^2;
    fprintf('The value of function is: %f',fun);
elseif(x<0&&y>=0)
    fun=x^2+y;
    fprintf('The value of function is: %f',fun);
else
    fun=x^2+y^2;
    fprintf('The value of function is: %f',fun);
end


%above program repeated many time fprintf so we write same program in this
%way just after end we put fprintf
clc
close all
x=input('Enter the value of x');
y=input('Enter the value of y');
if(x>=0&&y>=0)
    fun=x+y
elseif(x>=0&&y<0)
    fun=x+y^2;
    
elseif(x<0&&y>=0)
    fun=x^2+y;
    
else
    fun=x^2+y^2;
    
end
 fprintf('The value of function is: %f',fun);


