function x = gaussipivot(A,b)
  [n m]=size(A);

  for k=1:n-1
    Piv= abs (A(k,k));
    p=k;
    for i=k+1:n
      if abs(A(i,k))>Piv;
        Piv=abs(A(i,k));
        p=i;
      end
    end
    if p~=k
      for j=k:n
        aux= A(k,j);
        A(k,j)= A(p,j);
        A(p,j)=aux;
      end
      aux= b(k);
      b(k)= b(p);
      b(p) = aux;
    end
    for i=k+1:n
      m=A(i,k)/A(k,k);
      for j= k+1:n
        A(i,j)= A(i,j)-m*A(k,j);
      end
      A(i,k)=0;
      b(i)=b(i)-m*b(k);
    end
  end
  % sustitucion hacia atras
    x=susthaciatras(A,b);
% Obtenemos el vector solucion