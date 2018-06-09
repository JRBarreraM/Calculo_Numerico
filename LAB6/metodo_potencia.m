function r = metodo_potencia(A,x,maxiter,tol)
  for k=1:maxiter
    y=A*x;
    r=phi(y)/phi(x);
    normalizado=y/norm(y,inf);
    if norm(x-normalizado,inf)<tol
      x
      r
      k
      return
    end
    x=normalizado;
  end
  x
  r
  k