% Q1> Write a MATLAB program and solve following equation using regula falsi method
%        3x + Sin(x) - exp(x) = 0
%         Manish Kumar
%         20BCH044
%         Lab_2 #Q1   

f = @(x) 3*x + sin(x) - exp(x);
a = input('Enter left side interval: ');
b = input('Enter right side interval: ');
n = input('Enter no. of iterations: ');
e = input('Enter tolerance: ');

if f(a)*f(b)<0 && a<b
    for i = 1:n
        c = ((a*f(b) - b*f(a))/(f(b)-f(a)));
        fprintf('C%d = %.4f\n',i,c)
        if abs(f(c)) < e
            fprintf('so Root of the given Equation is: %f\n',c)
            break
        end
        if f(a)*f(c)<0
            b = c;
        elseif f(b)*f(c)<0
            a = c;
        end
    end
else
    disp('No root in the given interval')
end
