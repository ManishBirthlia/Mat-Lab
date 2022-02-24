%  
%  Manish Kumar
%  20bch044 

e=2.718;
f = @(y,x) 2 -e^-4*x -2*y;
%interval for x is [0,1]
% and total intervals in [0,1] is 10
% so n=10
x0 = input('Enter the value of lower limit: ');
y0 = 1;
xn = input('Enter the value of upper limit: ');
n = input('Enter the number of intervals: ');
h = (xn-x0)/n;
i=1;
m = y0 + h*f(x0,y0);
while i<=10   
    m = m + h*f(m,i/10);
    i =i + 1;  
    fprintf(' is: %i\n',m)
end