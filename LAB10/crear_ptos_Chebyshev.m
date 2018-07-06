function x = crear_ptos_Chebyshev(intervaloinf,intervalosup,npuntos)
  x=NaN(npuntos,1);
  for i=1:npuntos
    x(i)=(0.5*(intervalosup+intervaloinf))+(0.5*(intervalosup-intervaloinf))*cos(((2*i-1)/(2*npuntos))*pi);
  end