
% Runge-Kutta 4 order method
% manish kumar
% roll no 20bch044


f = input( 'enter your function:');
x0= input( 'enter intial value of independed variable:');
y0= input ( ' enter intial value of depended variable:');
h = input (' enter step size:');
xn= input (' enter point at which you want y:');
n= (xn-x0)/h;
x(1)= x0;
y(1)=y0;
for i =1:n
    x(i+1)=x0+i*h;
    k1= h*f(x(i),y(i));
    k2=h*f(x(i+1),y(i)+k1);
    y(i+1)=y(i)+0.5*(k1+k2);
    fprintf('y(%.2f)=%.4f\n',x(i+1),y(i+1))
end