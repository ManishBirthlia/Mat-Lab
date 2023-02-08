% Runga_Kutta_4th_method
% Manish Kumar
% 20bch044
f = @ (x,y)  0.05625*(400-y);
x0 = input('Enter initial value of independent variable: ');
y0 = input('Enter initial value of dependent variable: ');
h = input('Enter step size: ');
xn = input('Enter point for solution evaluation: ');
n = (xn-x0)/h;
x(1) = x0; y(1) = y0;
for i=1:n
    
    x(i+1) = x0 + i*h;
    %Equation used in Runge Kutta Method
    k1 = h*f(x(i),y(i));
    k2 = h*f(x(i)+(h/2),y(i)+(k1/2));
    k3 = h*f(x(i)+(h/2),y(i)+(k2/2));
    k4 = h*f(x(i)+h,y(i)+k3);
    % FORMULA for compute the value of Result in Runge Kutta Method
    y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4);
    fprintf('y(%.4f) = %.6f\n',x(i+1),y(i+1));
end
plot (x,y);