function x = FactorizacionLU(A,b)
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
  % LUx = b
  % Ly = b
  % Ux = y

% sustitucion hacia adelante
  y=susthaciadelante(L,b);
% sustitucion hacia atras
  x = susthaciatras(U,y);
% Obtenemos el vector solucion
  iteraciones