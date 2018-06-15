function x=encontrar_tiempo(Valores)
  n=length(Valores);
  for i=1:n
    if 0<Valores(i) && Valores(i)<8 && imag(Valores(i))==0
      x=Valores(i);
      return
    end
  end