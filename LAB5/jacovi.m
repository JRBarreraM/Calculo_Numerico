function [xnueva,k] = jacovi(A,b,xvieja,maxiter,tol)
  % A = D-E-F donde D (diagonal), E (tri inferior), F (tri superior)
  % x = D^(-1)*(E+F)*x + D^(-1)*b
  % converge si: 1<norm(D^(-1)*(E+F),inf)
  % x^(k+1) = D^(-1)*(E+F)*x^(k) + D^(-1)*b
  % D=diag(A);
  % E=tril(A,-1);
  % F=triu(A,+1);
  % ai1*x1+ai2*x+...+aii*xi+...+ain*xn = bi
  % sum desde j=1 hasta i-1 
  % x(i)^(k+1)=(b(i)-)
  
  [n,m]=size(A);
  xnueva=NaN+ones(n,1);
  for k=1:maxiter
    for i=1:n
      suma1=0;
      for j=1:i-1
        suma1=suma1+A(i,j)*xvieja(j);
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
  disp("No converge con el maximo de iteraciones");