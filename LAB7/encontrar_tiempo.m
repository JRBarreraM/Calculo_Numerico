% Funcion que recibe un vector de valores y busca aquellos entre las cotas
% y que sean reales.
function x=encontrar_tiempo(Valores,cotainf,cotasup)
  n=length(Valores);
  x=[];
  for i=1:n
    if cotainf<Valores(i) && Valores(i)<cotasup && imag(Valores(i))==0
      x=[x,Valores(i)];
    end
  end