% Q1> Write a MATLAB program and solve following equation using Newton Raphson method
%         cos(x) - 2(x) = 0
%         Manish Kumar
%         20BCH044
%         Lab_3 #Q1   

f = @(x) cos(x) - 2*(x);
df= @(x) -sin(x) - 2;
e = input('Enter tolerance');
x0 = input('Enter initial value');
n = input('Enter no of iteration');


if df(x0)~=0
    for i = 1:n
        x1 = x0-f(x0)/df(x0);
        fprintf('x%d = %.4f\n',i,x1)
        if abs(x1-x0)< e
            fprintf('Root Of Equation is: %f\n',x1)
            break
        end
        if df(x1)==0
            disp('Newton raphson failed')
        end
        x0=x1;
    end
else
    disp('Newton raphson failed');
end