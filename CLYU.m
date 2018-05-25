function x = CLYU(A,b)
  [n m]=size(A);
  
  for k=1:n-1
    for i=k+1:n
      A(i,k)=A(i,k)/A(k,k);
      for j=k:n
        A(i,j)=A(i,j)-(A(i,k)*A(k,j));
      end
    end
  end
  
  x=zeros(n,1);
  x(1)=b(1);
  for i=2:n
    suma=0;
    for j=1:i-1
      suma=A(i,j)*x(j)+suma;
    end
    x(i)=b(i)-suma;
  end
  x(n)=x(n)/A(n,n);
  for i=n-1:-1:1
    suma=0;
    for j=1+1:n
      suma=A(i,j)*x(j)+suma;
    end
    x(i)=(x(i)-suma)/A(i,i);
  end