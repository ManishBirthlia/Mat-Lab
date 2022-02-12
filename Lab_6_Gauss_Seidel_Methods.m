%  Gauss Seidel Method
%  Manish Kumar
%  20bch044 
A = input ('input augmented matrix:');
m = size(A,1);
n = size(A,2);
x1 = [0 0 0];
tolerance = input('enter the tolerancetol:');
iter = input ('enter maxmium number of iteration,:');
k = 1;
while k<= iter
    for i = 1:m
        s = 0;
        for j = 1:m
            if i~=j     
                s = s+A(i,j)*x1(j);
            end
        end
        x1new(i) = (A(i,m+1)-s)/A(i,i);
        if abs(x1new(i)-x1(i))<tolerance
            break;
        end
        x1(i)=x1new(i);
    end
    k = k+1;
end
fprintf('solution vector after % d iterationis :\n ',k-1);
for i = 1 :m
    fprintf('%11.8f\n',x1(i));
end 