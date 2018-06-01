function [xnueva,k] = gausseidel(A,b,xvieja,maxiter,tol)
    [n,m]=size(A);
    xnueva=NaN+ones(n,1);
      for k=1:maxiter
    for i=1:n
      suma1=0;
      for j=1:i-1
        suma1=suma1+A(i,j)*xnueva(j);
      end
      suma2=0;
      for j=i+1:n
        suma2=suma2+A(i,j)*xvieja(j);
      end
      xnueva(i)=(b(i)-suma1-suma2)/A(i,i);
    end
    if norm(xvieja-xnueva,inf)<tol
      disp("k = #iteraciones")
      return 
    end
    xvieja=xnueva;
  end
% (D-E)x^(k+1) = F*x^(k) + b
% (D-F)x^(k+1) = E*x^(k) + b
% x^(k+1) = (D-F)^(-1)*F*x^(k) + (D-F)^(-1)
% b(i)=B(:i)
