function x = LU(A,b)
  [n m]=size(A);

  U=triu(A);
  L=tril(A,-1)+eye(n);

  % LUx = b
  % Ly = b
  % Ux = y

% sustitucion hacia adelante
  
  x=zeros(n,1);

  x(1)=b(1)/A(1,1);

  for i=2:n
    suma=0;
    for j=1:i-1
      suma=suma+A(i,j)*x(j);
    end
    x(i)=(b(i)-suma)/A(i,i);
  end
  
% sustitucion hacia atras

  x=zeros(n,1);

  x(n)=b(n)/A(n,n);

  for i=n-1:-1:1
    suma=0;
    for j=i+1:n
      suma=suma+A(i,j)*x(j);
    end
    x(i)=(b(i)-suma)/A(i,i);
  end

% Obtenemos el vector solucion