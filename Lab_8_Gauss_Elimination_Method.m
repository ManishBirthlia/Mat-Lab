%  Gauss Elimination Method
%  Eigenvalues and Eigen vector
%  Manish Kumar
%  20bch044 

A = input('Enter your coefficient matrix: ');
B = input('Enter source vector: ');
N = length(B);
X = zeros(N,1);
Aug = [A,B];
%Forming Upper Triangular Matrix
for j=1:N-1
    for i=j+1:N
        m = Aug(i,j)/Aug(j,j);
        Aug(i,:) = Aug(i,:) - m*Aug(j,:);
    end
end
Aug

%Backward Substitution
X(N) = Aug(N,N+1)/Aug(N,N);
for k=N-1:-1:1
    X(k) = ( Aug(k,N+1) - Aug(k,k+1:N)*X(k+1:N) )/Aug(k,k);

end
fprintf('Therefore the roots are: ')
X

%Eigen Vectors

A = input('Enter your coefficient matrix: ');
B = input('Enter source vector: ');
% Eigen values and Eigen vectors
% AX = nX
% AX = nIX
% (A-nI)X = 0
fprintf('Therefore, the Eigen values are:') 
eig(A) %Eigen values of A
[Y,D] = eig(A);
fprintf('Therefore, the Eigen vectors are: ') 
Y
fprintf('Therefore, the diagnol matrix is: ') 
D