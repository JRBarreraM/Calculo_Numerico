function solucion=sust_atras(A,b)
  [n,m] = size(A);

  x(n)=b(n)/A(n,n);

  for i=n-1:-1:1
    suma=0;
    for j=i+1:n
      suma=suma+A(i,j)*x(j);
    end
    x(i)=(b(i)-suma)/A(i,i);
  end
  solucion = x';
end