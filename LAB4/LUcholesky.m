function L = LUcholesky(A)
  [n m]=size(A);
  L=zeros(n);
  for k=1:n
    suma=0;
    for s=1:k-1
      suma=suma+L(k,s)^2;
    end
    L(k,k)=(A(k,k)-suma)^(1/2);
    for i=k+1:n
      suma=0;
      for s=1:k-1
        suma=suma+L(i,s)*L(k,s);
      end
      L(i,k)=(A(i,k)-suma)/L(k,k);
    end
  end