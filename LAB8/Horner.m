function y = Horner(coeficientes,x)
  n=length(coeficientes);
  p=coeficientes(n);
  for i=n-1:0
    p=p*x+coeficientes(i);
  end