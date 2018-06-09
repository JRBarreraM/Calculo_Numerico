function [L,U] = FactorizacionLU(A)

  [n m]=size(A);
  iteraciones=0;

  for k=2:n
    for i=k:n
      A(i,k-1)=A(i,k-1)/A(k-1,k-1);
      for j=k:n
        A(i,j)=A(i,j)-(A(i,k-1)*A(k-1,j));
        iteraciones=iteraciones+1;
      end
    end
  end

  L=tril(A,-1)+eye(n);
 
  U=triu(A);