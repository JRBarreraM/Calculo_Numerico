function x = resolversistemaconcholesky(L,b)
% sustitucion hacia adelante
  y=susthaciadelante(L,b);
% sustitucion hacia atras
  x = susthaciatras(L',y);
% Obtenemos el vector solucion