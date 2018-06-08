function autovector = metodo_potencia_inversa(A,xinicial,maxiter,tol)
  [L,U]=FactorizacionLU(A)
  for k=1:maxiter
    y=inv(L*U)*x;
    r=phi(y)/phi(x);
    x=y/norm(y,inf);
    if norm(xvieja-xnueva,inf)<tol
      return
    end
    return
  end