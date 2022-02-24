

% Q1> Write a MATLAB program and solve following equation using Secant method
%       3x + sin(x)- exp(x)=0
%         Manish Kumar
%         20BCH044
%         Lab_4 #Q1   
f = @(x) 3*x + sin(x) - exp(x);
e = input('Enter tolerance: ');
x0 = input('Enter 1st guess value: ');
x1 = input('Enter 2nd guess value: ');
n = input('Enter no of iteration: ');

    for i = 1:n
        x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
        fprintf('x%d = %.4f\n',i,x2)
        if abs(x2-x1)< e
            fprintf('so Root of the given Equation is: %f\n',x2)
            break
        end
        x0=x1;
        x1=x2;
    end