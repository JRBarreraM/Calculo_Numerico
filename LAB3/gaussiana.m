function x = gaussiana(A,b)
  [n m]=size(A);

% Convertimos A en una matriz triangular superior
  for k=1:n-1
    for i=k+1:n
      alfa=rdivide(A(i,k),A(k,k));
      for j=k:n
        A(i,j)=A(i,j)-(alfa*A(k,j));
      end
      b(i) = b(i) - alfa*b(k);
    end
  end

% sustitucion hacia atras
  x=susthaciatras(A,b);
% Obtenemos el vector solucion