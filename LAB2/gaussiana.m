function x = gaussiana(A,b)
  [n m]=size(A);

% Convertimos A en una matriz triangular superior
  for k=1:n-1
    for i=k+1:n
      alfa=rdivide(A(i,k),A(k,k));
      for j=k:n
        A(i,j)=A(i,j)-(alfa*A(k,j));
      end
      b(i) = b(i) - alfa*b(k);
    end
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