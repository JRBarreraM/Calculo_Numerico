function x = crear_ptos_Chebyshev(npuntos,intervaloinf,intervalosup)
  x=NaN(n,1);
  for i=2:npuntos
    x(i)=(0.5*(intervalosup+intervaloinf))+(0.5*(intervalosup-intervaloinf))*cos(((2*i-1)/(2*npuntos))*pi);
  end