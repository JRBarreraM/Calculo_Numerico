function solucion = verificarrelacion(A,b,metodo)
  xmedida=gauss(A,b,metodo);
  xreal=A\b;
  numerador=norm(b-(A*xmedida),inf);
  denominador=norm(b,inf);
  lado_derecho=cond(A)*(numerador/denominador);
  numerador=norm(xreal-xmedida,inf);
  denominador=norm(xreal,inf);
  lado_izquierdo=(numerador/denominador);
  if lado_izquierdo <= lado_derecho
    solucion = 1;
  else
    solucion = 0;
  end