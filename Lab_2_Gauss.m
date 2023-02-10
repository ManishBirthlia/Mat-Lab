% Gauss Jacobi using Matlab

A=input("Enter a Co-efficient Matrix  A:");
R= sum(abs(A),2);
D= abs(diag(A));
W=R-D;
check=D>=W;
DD=all(check);
if DD==1
    B=input("Enter Source Vector B :");
    N=length(B);

    P=zeros(N,1);

    n=input("Enter  of iterations: ");

    e=input("Enter your tollerance: ");
    
    X=zeros(N,1);

    err=zeros(N,1);

    for j=1:n
        for i=1:N
            xold=X(i);
            X(i)= (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
            err(i)=abs(X(i)-xold);

        end
         disp(['Iter ',num2str(j), '; Error = ',num2str(max(err))])
        
        if abs(X-P)<e
            break
        end
        P=X;
    end

elseif D==0
    disp("Matrix is not diagonally dominant!!")
else
    disp("Your input is not square Matrix!!")
end
X

a = input("Enter value of a :");
g = a^2 *X(1,1) +a*X(2,1) + X(3,1)