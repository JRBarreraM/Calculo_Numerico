function p = Horner(coeficientes,x)
  n=length(coeficientes);
  p=coeficientes(1);
  for i=2:n
    p=(p.*x)+coeficientes(i);
  end