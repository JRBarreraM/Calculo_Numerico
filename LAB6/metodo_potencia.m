function [x,autovector_maximo,iteraciones] = metodo_potencia(A,x,maxiter,tol)
  for iteraciones=1:maxiter
    y=A*x;
    autovector_maximo=phi(y)/phi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      return
    end
    x=normalizado;
  end