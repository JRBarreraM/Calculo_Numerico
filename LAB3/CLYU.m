function x = CLYU(A,b)
  [n m]=size(A);
  
  for k=2:n
    for i=k:n
      A(i,k-1)=A(i,k-1)/A(k-1,k-1);
      for j=k:n
        A(i,j)=A(i,j)-A(i,k-1)*A(k-1,j);
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