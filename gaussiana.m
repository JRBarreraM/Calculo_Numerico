function [A,solucion] = gaussiana(A,b)
  [n m]=size(A);
  for k=1:n-2
    for i=k+1:n
      alfa=A(i,k)/A(k,k);
      for j=k:n
        A(i,j)=A(i,j)-(alfa*A(k,j));
      end
    end
  end
  solucion=sust_atras(A,b);