#LAB8 Estudiante: Jose Barrera. Carnet: 1510123.

# Funcion
f = @(x) (x.*(sin(x)))./((x.^2).+1);

# Calculamos los puntos
intervalo10 = -4*pi:(8*pi)/9:4*pi;
intervalo30 = -4*pi:(8*pi)/29:4*pi;
intervalo50 = -4*pi:(8*pi)/59:4*pi;

# Calculamos el vector de y
resultados_10 = f(intervalo10);
resultados_30 = f(intervalo30);
resultados_50 = f(intervalo50);

# Calculamos la matriz de Vandermonde
vandermond10=vander(intervalo10);

vandermond30=vander(intervalo30);

vandermond50=vander(intervalo50);

# Calculamos el vector solucion
x10=vandermond10\resultados_10'
x30=vandermond30\resultados_30'
x50=vandermond50\resultados_50'
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')