%Break and Continue Statements
%basically thses are also control statements
%There are two additional statements  that can be used to control the
%operation of while loops and for loops viz. break and continue.
%break is use to terminate the execution of a loop and passes control to
%the next statement after the end of the loop.
%continue is use to terminates the current statement pass through the loop
%and returns control to the top of the loop
%EXAMPLE: Break Statement
for i=1:5
    if i==3;
        break;
    end
    fprintf('i= %d \n',i);
end
disp(['end of loop']);


%EXAMPLE FOR CONTINUE
for i=1:5
    if i==3;
        continue;
    end
    fprintf('i= %d \n',i);
end
disp(['end of loop']);