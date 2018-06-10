function [x,autovector_minimo,iteraciones] = metodo_potencia_inversa(A,x,maxiter,tol)
  [L,U]=FactorizacionLU(A);
  for iteraciones=1:maxiter
% Resolver LUy=x
    y=susthaciadelante(L,x);
    y=susthaciatras(U,y);
    autovector_minimo=phi(y)/phi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      autovector_minimo=1/autovector_minimo;
      return
    end
    x=normalizado;
  end
  autovector_minimo=1/autovector_minimo;