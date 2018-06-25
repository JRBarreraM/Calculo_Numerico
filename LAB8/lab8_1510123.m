#LAB8 Estudiante: Jose Barrera. Carnet: 1510123.

# Funcion
f = @(x) (x.*(sin(x)))./((x.^2).+1);

%% Parte a)
% Obtenga el polinomio de interpolaci ?on en la forma canonica resolviendo
% el sistema lineal asociado(Ax = y donde A es la matriz de Vandermonde).
% El polinomio obtenido debe ser evaluado en la forma de Horner cuando sea
% requerido.

# Calculamos las coordenadas x
intervalo10 = linspace(-4*pi,4*pi,10);
intervalo30 = linspace(-4*pi,4*pi,30);
intervalo50 = linspace(-4*pi,4*pi,50);
# Seleccionado para hacer la grafica mas curveada
intervalo250 = linspace(-4*pi,4*pi,250);

# Calculamos el vector original y
resultados_10 = f(intervalo10);
resultados_30 = f(intervalo30);
resultados_50 = f(intervalo50);
resultados_250 = f(intervalo250);

# Calculamos la matriz de Vandermonde
vandermond10=vander(intervalo10);
vandermond30=vander(intervalo30);
vandermond50=vander(intervalo50);

# Calculamos el vector solucion
x10=vandermond10\resultados_10'
x30=vandermond30\resultados_30'
x50=vandermond50\resultados_50'

%% Parte c)
% Grafique f(x), el polinomio de interpolacion para cada metodo y los
% puntos tomados en una ventana de tres graficos (una por cada cantidad de
% puntos).

subplot(3,2,[1,2]);
hold on
title('Aproximacion por polinomio de 10 puntos')

% aqui graficamos la funcion original
plot(intervalo250,resultados_250,'b')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])


% aqui graficamos los puntos tomados para la aproximacion
plot(intervalo10,resultados_10,'sr')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos vandermonde
plot(intervalo250,polyval(x10,intervalo250),'-g')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos lagrange
nev = zeros(0,250);
k = 1;
for i=1:250
  nev(k) = lagrange_neville(intervalo250(i),intervalo10,resultados_10);
  k = k + 1;
end

plot(intervalo250,nev,'--m')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

legend("Funcion","Puntos Tomados","Vander","Lagrange")

subplot(3,2,[3,4]);
hold on
title('Aproximacion por polinomio de 30 puntos')

% aqui graficamos la funcion original
plot(intervalo250,resultados_250,'b')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos tomados para la aproximacion
plot(intervalo30,resultados_30,'sr')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos vandermonde
plot(intervalo250,polyval(x30,intervalo250),'-g')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos lagrange
nev = zeros(0,250);
k = 1;
for i=1:250
  nev(k) = lagrange_neville(intervalo250(i),intervalo30,resultados_30);
  k = k + 1;
end

plot(intervalo250,nev,'--m')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

subplot(3,2,[5,6]);
hold on
title('Aproximacion por polinomio de 50 puntos')

% aqui graficamos la funcion original
plot(intervalo250,resultados_250,'b')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos tomados para la aproximacion
plot(intervalo50,resultados_50,'sr')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos vandermonde
plot(intervalo250,polyval(x50,intervalo250),'-g')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos lagrange
nev = zeros(0,250);
k = 1;
for i=1:250
  nev(k) = lagrange_neville(intervalo250(i),intervalo50,resultados_50);
  k = k + 1;
end

plot(intervalo250,nev,'--m')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

%% Parte d)
% Aproxime los valores de f(-6.1333) y f(-1.4142) usando los distintos
% polinomios interpolantes para 50 puntos. Calcule el error relativo.

real = f(-6.1333);
polin = polyval(x50,-6.1333);
errorvan = errorrelativo(real,polin);
disp('Valor de la funcion f(-6.1333) en aproximacion Vandermonde')
disp(polin)
disp('Error relativo Vandermonder')
disp(errorvan)
nev = lagrange_neville(-6.1333,intervalo50,resultados_50);
errornev = errorrelativo(real,nev);
disp('Valor de la funcion f(-6.1333) en aproximacion Lagrange')
disp(nev)
disp('Error relativo Lagrange')
disp(errornev)

real = f(-1.4142);
polin = polyval(x50,-1.4142);
errorvan = errorrelativo(real,polin);
disp('Valor de la funcion f(-1.4142) en aproximacion Vandermonde')
disp(polin)
disp('Error relativo Vandermonder')
disp(errorvan)
nev = lagrange_neville(-1.4142,intervalo50,resultados_50);
errornev = errorrelativo(real,nev);
disp('Valor de la funcion f(-1.4142) en aproximacion Lagrange')
disp(nev)
disp('Error relativo Lagrange')
disp(errornev)