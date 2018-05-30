%NESTED IF CONSTRUCTION, SAME PROBLEM SOLVED IN NESTED IF FASHION
%EXAMPLE: Print the division corresponding to the marks enter by a student
%criteria marks>= 60   First Grade, 45=<Marks<60   second Grade
%30=<Marks<45  Third, Marks<30 Fails

marks = input('Enter the percentage marks:');
if(marks>=60)
    fprintf('First Division');
else
    if(marks>=45&marks<60)
        fprintf('Second Division')
    else
        if(marks>=30&marks<45)
            fprintf('Third Division');
        else 
             fprintf('Fail')
        end
    end
end
