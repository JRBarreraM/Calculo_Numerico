function solucion = Lab2abc(n)

  H=zeros(n);

  for i=1:n
    for j=1:n
      H(i,j) = 1/(i+j-1);
     end
  end

  u=zeros(n,1);

  for k=1:n
    u(k)=1;
  end

  b=H*u;
  disp('Vectores Solucion \');
  xmatlab=H\b
  disp('Vectores Solucion Mi Gauss');
  xgauss=gaussiana(H,b);
  disp(xgauss)

  disp('Norma Infinita del Vector Residual');
  r = b - (H*xgauss);
  norminfi = norm(r,inf);
  disp(norminfi);
  disp('Error Relativo con Norma Infinita del Error');  
  error = xgauss-u;
  norminfi = norm(error,inf)/norm(u,inf);  
  norminfi = norminfi*100;
  disp(norminfi);