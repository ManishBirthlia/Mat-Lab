%  Trapezoidal
%  Manish Kumar
%  20bch044 





f = @(x) 2*x^3 + x^0.6;
x0 = input('Enter the value of lower limit: ');
xn = input('Enter the value of upper limit: ');
n = input('Enter the number of intervals: ');
h = (xn-x0)/n;
m = f(x0)+f(xn);
for i=1:n-1
    m = m + 2*(f(x0+i*h));
end
Integral = h/2*m;
fprintf('The integral by Trapezoidal root is: %i\n',Integral)