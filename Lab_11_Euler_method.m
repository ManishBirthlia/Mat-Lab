% euler theroem for ode solution
% manish kumar
% roll no 20bch044

f = input( 'enter your function:');
t0= input( 'enter intial value of independed variable:');
y0= input ( ' enter intial value of depended variable:');
h = input (' enter step size:');
tn= input (' enter point at which you want y:');
n= (tn-t0)/h;
t(1)= t0;
y(1)=y0;
for i= 1:n
    y(i+1) = y(i)+h*f(t(i),y(i));
    t(i+1)=t0+i*h;
    fprintf('y(%.2f)=%.4f\n',t(i+1),y(i+1));
end