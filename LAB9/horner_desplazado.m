function p = Horner(coeficientes,x,pointx)
  n=length(coeficientes);
  p=coeficientes(1);
  for i=2:n
    p=(p.*(x-pointx(i)))+coeficientes(i);
  end