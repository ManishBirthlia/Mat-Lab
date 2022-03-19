
% Power Method
% manish kumar
% 20bch044

A = input('Enter your coefficient matrix A : ');
B = input('Enter initial guess vector x0 : ');
N = input('Enter number of iterations : ');

for i=1:N
    B=A*B;
    eigon_value=max(B)
    B=B/eigon_value;
    fprintf('eigon vector element is %f\n',B)
end
