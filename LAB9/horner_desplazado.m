function p = horner_desplazado(coeficientes,x,pointx)
  n=length(coeficientes);
  p=coeficientes(n);
  for i=n-1:-1:1
    p=(p*(x-pointx(i)))+coeficientes(i);
  end