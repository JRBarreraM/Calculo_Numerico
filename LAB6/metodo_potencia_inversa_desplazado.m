function [x,autovector_cercano,iteraciones] = metodo_potencia_inversa_desplazado(A,x,miu,maxiter,tol)
  [n m]=size(A);
  I=eye(n);
  A=A-(miu*I);
  [L,U]=FactorizacionLU(A);
  for iteraciones=1:maxiter
% Resolver LUy=x
    y=susthaciadelante(L,x);
    y=susthaciatras(U,y);
    autovector_cercano=phi(y)/phi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      autovector_cercano=(1/autovector_cercano)+miu;
      return
    end
    x=normalizado;
  end
  autovector_cercano=(1/autovector_cercano)+miu;