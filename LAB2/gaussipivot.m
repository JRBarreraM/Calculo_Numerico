function x = gaussipivot(A,b)
  [n m]=size(A);

  for i=1:n-1
    Piv=0;
    Piv= abs (A(i,i));
    p=i;
    for k=i+1:n
      if abs (A(k,i))>Piv;
        Piv=abs(A(k,i));
        p=k;
      end
    end
    if p~=i
      for j=i:n
        aux= A(i,j);
        A(i,j)= A(p,j);
        A(p,j)=aux;
      end
      aux= b(i);
      b(i)= b(p);
      b(p) = aux;
    end
    for k=i+1:n
      m=A(k,i)/A(i,i);
      for j= i+1:n
        A(k,j)= A(k,j)-m*A(i,j);
      end
      A(k,i)=0;
      b(k)=b(k)-m*b(i);
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