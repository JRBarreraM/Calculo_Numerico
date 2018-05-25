function error = errorelativo(esperado,resultado)
  numerador=norm(esperado-resultado,inf);
  denominador=norm(esperado,inf);
  error=numerador/denominador;