% Q1> Write a MATLAB program and solve following equation using bisection method
%         2sin(x^2) - x = 0
%         Manish Kumar
%         20BCH044
%         Lab_1 #Q1


f = @(x) 2*sin(x^2) - x;
a = input('Enter left side interval: ');
b = input('Enter right side interval: ');
n = input('Enter no. of iterations: ');
e = input('Enter tolerance: ');

if f(a)*f(b)<0
    for i = 1:n
        c = (a +b)/2;
        fprintf('C%d = %.4f\n',i,c)
        if abs(c-b)<e || abs(c-a)<e
            fprintf('so Root of the given Equation is: %f\n',c)
            break
        end
        if f(a)*f(c) < 0
            b=c;
        elseif f(b)*f(c)<0
            a =c;
        end
    end
else
    disp('No root in given interval.')
end