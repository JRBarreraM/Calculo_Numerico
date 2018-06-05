function [x1,x2,x3] = FactorizacionLUtriple(A,b1,b2,b3)
  
  tiempo=cputime;

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

% Resolver sistema para b1
% sustitucion hacia adelante
  y=susthaciadelante(L,b1);
% sustitucion hacia atras
  x1 = susthaciatras(U,y);
% Obtenemos el vector solucion
  iteraciones
% mostramos el tiempo que toma resolver con el metodo uno de los vectores, pues
% de resolver el sistema para cada b, seria este mismo tiempo
  printf('Tiempo cpu time: %f seconds \n' ,cputime-tiempo);

% las iteraciones en los 3 casos son las mismas al igual que la factorizacion
  
% Resolver sistema para b2
% sustitucion hacia adelante
  y=susthaciadelante(L,b2);
% sustitucion hacia atras
  x2 = susthaciatras(U,y);

% Resolver sistema para b3
% sustitucion hacia adelante
  y=susthaciadelante(L,b3);
% sustitucion hacia atras
  x3 = susthaciatras(U,y);