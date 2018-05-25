function x = LU(A,b)
  [n m]=size(A);

  for k=2:n
    for i=k:n
      A(i,k-1)=A(i,k-1)/A(k-1,k-1);
      for j=k:n
        A(i,j)=A(i,j)-(A(i,k-1)*A(k-1,j));
      end
    end
  end
 
  U=triu(A);
  L=tril(A,-1)+eye(n);

  % LUx = b
  % Ly = b
  % Ux = y

% sustitucion hacia adelante
  y=susthaciadelante(L,b);
% sustitucion hacia atras
  x = susthaciatras(U,y);
% Obtenemos el vector solucion