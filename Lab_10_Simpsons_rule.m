%% Simpsons 3/8 rule method
%  Manish Kumar
%  20bch044 



f= @(x) x.(x-2).(x-3); 
a = input('enter the lower limit a: ');
b = input('enter the upper limit b: ');
n = input('enter the no. of subinterval: ');
h= (b-a)/n;
if rem(n,3) == 0
    fprintf('its valid n!!! \n');
else
     fprintf('\n please enter valid n!!! ');
    n= input('\n enter n as multiple of 3: ');
end 
K = 1:1:n-1;
S = f(a+K.h);
I = 3:3:n-1;
S3 = sum(S(1));
S(I)  = [];
So = sum(S);   %compute sum
%write simpson's 3/8 formula
out = (3*h/8).* (f(a)+f(b)+3.*So+2.*S3);
fprintf('the value of integration is %f\n', out);