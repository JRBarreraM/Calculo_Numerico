function solucion=sust_adelante(A,b)
  [n,m] = size(A);

  x(1)=b(1)/A(1,1);

  for i=2:n
    suma=0;
    for j=1:i-1
      suma=suma+A(i,j)*x(j);
    end
    x(i)=(b(i)-suma)/A(i,i);
  end
  solucion = x';
end