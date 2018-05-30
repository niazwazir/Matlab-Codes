%LECTURE 23 CONTROL STATEMENTS: OPERATORS
%TWO Categories of control statements one is called Branches and other is
%called as Loops
%Branches function which select specific section of the code to execute
%Loops which cause specific section of the code to be repeated.
%Logical data either True or False
%Logical is two types of operator
%(1) Relational Operator
%92) Logic/logical Operator

%Relational Operator syntax (expression, operator, variable)
% == used for equal to, ~= used for not equal to, >, >=, <, <=
%These are called as realtional operator and out put of these operators
%are True/False or zero/one

a = 4  % here assign 4 to a
a==5   % here we ask a equal to 5, answer is false, so output is 0


%
 a=[1 0;-2 1]

a =

     1     0
    -2     1

b = 0

b =

     0

a>b


%STRING CHARACTER MATCHING
'sana'=='saad'

ans =

     1     1     0     0
     
     
 %LOGIC OPERATOR (arithmetic expression, operator,variable or string)
 %Types of logical operator ~ logical NOT, & Logical AND, && Logical AND 
 %with shortcut evaluation, | Logical OR, || Logical OR with shortcut
 %evaluation, xor logical exclusive OR
 
 %EXAMPLE LOGICAL OPERATOR Assume a =3, b = 4 and c= 0
 a =6;
 b=4;
 c=0;
 c||b>a   % c or b is greater than a ans false so ans is zero
 
 
 a =6;
 b=4;
 c=0; 
 a>b&& ischar(c)  % a is greater than b yes and c is a character no, so in
 % AND operator TRUE and False Result is False 0
 
 a =6;
 b=4;
 c='0'; 
 a>b&& ischar(c) % in this case both statements are true ans true 1
 
 (~a)&b   % not a means false ans false 0
 xor(a,c)|b    %   ans 1
 
 
 %HIERARCHY OF EVALUATION OF OPERATORS
 %(1) Arithmetic (2) Relational (left to right) and (3) Logic (left to right)
 %in programming we follow this sequence
 
 %EXAMPLE
 a=20;
 b=-2;
 c=0;
 d=1;
 a>b&&c>d   % first read a greater than b ans yes and then read c greater than d no false than read true and operator false result is false
 
 a=20;
 b=-2;
 c=0;
 d=1; 
 a&&b+d>c  % first solve b+d (arithmetic first) -1 is greater than c no, a and c answer is false
 
 
 % ~~b ans is true and  ~~~b ans is false but depend on value of b is -4, 4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 