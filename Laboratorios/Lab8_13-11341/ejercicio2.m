% Ejercicio 2

% Autor: David Segura

% Considere la siguiente funci�n: f(x) = (x*sin(x))/(x^2+1)
% Tomando 10, 30 y 50 puntos igualmente espaciados en el intervalo [?4?,4?]

clc,clear

%% Inciso (a)
% Obtenga el polinomio de interpolaci ?on en la forma canonica resolviendo
% el sistema lineal asociado(Ax = y donde A es la matriz de Vandermonde).
% El polinomio obtenido debe ser evaluado en la forma de Horner cuando sea
% requerido.

% Polinomio de grado 9
% f(x) = (x*sin(x))/(x^2+1)
puntosx = -4*pi:0.01:4*pi;
puntosy = zeros(size(puntosx));
k = size(puntosx);
k = k(1,2);
for i=1:k;
    puntosy(1,i) = funcion(puntosx(i));
end
puntosx10 = linspace(-4*pi,4*pi,10);    
puntosy10 = zeros(1,10);
for i=1:10;
    puntosy10(1,i) = funcion(puntosx10(1,i));
end
matrizvander10 = vander(puntosx10);
coef10 = matrizvander10\puntosy10';
coef10 = coef10';
polinomio1 = polyval(coef10,puntosx);
% Polinomio de grado 29
puntosx30 = linspace(-4*pi,4*pi,30);
puntosy30 = zeros(1,30);
for i=1:30;
    puntosy30(1,i) = funcion(puntosx30(1,i));
end
matrizvander30 = vander(puntosx30);
coef30 = matrizvander30\puntosy30';
coef30 = coef30';
polinomio3 = polyval(coef30,puntosx);
% Polinomio de grado 49
puntosx50 = linspace(-4*pi,4*pi,50);
puntosy50 = zeros(1,50);
for i=1:50;
    puntosy50(1,i) = funcion(puntosx50(1,i));
end
matrizvander50 = vander(puntosx50);
coef50 = matrizvander50\puntosy50';
coef50 = coef50';
polinomio5 = polyval(coef50,puntosx);

%% Inciso (b)
% Obtenga el polinomio de interpolacion en la forma de Lagrange. Debe
% implementar el algoritmo.

coefL1 = zeros(size(puntosx));
coefL2 = zeros(size(puntosx));
coefL3 = zeros(size(puntosx));
for i=1:k;
    J1 = neville(puntosx(1,i),puntosx10,puntosy10);
    coefL1(1,i) = J1(10,10);
    J2 = neville(puntosx(1,i),puntosx30,puntosy30);
    coefL2(1,i) = J2(30,30);
    J3 = neville(puntosx(1,i),puntosx50,puntosy50);
    coefL3(1,i) = J3(50,50);
end

%% Inciso (c)
% Grafique f(x), el polinomio de interpolacion para cada metodo y los
% puntos tomados en una ventana de tres graficos (una por cada cantidad de
% puntos).

subplot(3,2,[1,2]);
hold on
title('Aproximacion por polinomio de 10 puntos')
plot(puntosx,puntosy,'b');
plot(puntosx10,puntosy10,'sr')
plot(puntosx,polinomio1,'-k','Linewidth',2)
plot(puntosx,coefL1,'--m','Linewidth',2)
legend('Funcion original','Puntos tomados para la aproximacion','Polinomio de Vandermonder','Polinomio de Lagrange')
subplot(3,2,[3,4]);
hold on
title('Aproximacion por polinomio de 30 puntos')
plot(puntosx,puntosy,'b');
plot(puntosx30,puntosy30,'sr')
plot(puntosx,polinomio3,'-k','Linewidth',2)
plot(puntosx,coefL2,'--m','Linewidth',2)
legend('Funcion original','Puntos tomados para la aproximacion','Polinomio de Vandermonder','Polinomio de Lagrange')
subplot(3,2,[5,6])
hold on
title('Aproximacion por polinomio de 50 puntos')
plot(puntosx,puntosy,'b');
plot(puntosx50,puntosy50,'sr')
plot(puntosx,polinomio5,'-k','Linewidth',2)
plot(puntosx,coefL3,'--m','Linewidth',2)
legend('Funcion original','Puntos tomados para la aproximacion','Polinomio de Vandermonder','Polinomio de Lagrange')

%% Inciso (d)
% Aproxime los valores de f(-6.1333) y f(-1.4142) usando los distintos
% polinomios interpolantes para 50 puntos. Calcule el error relativo.

format long
real = funcion(-6.1333);
f6v = polyval(coef50,-6.1333);
error6v = errorrelativo(real,f6v);
disp('Valor de la funcion f(-6.1333) en aproximacion Vandermonder')
disp(f6v)
disp('Error relativo Vandermonder')
disp(error6v)
aux = neville(-6.1333,puntosx50,puntosy50);
f6l = aux(50,50);
error6l = errorrelativo(real,f6l);
disp('Valor de la funcion f(-6.1333) en aproximacion Lagrange')
disp(f6l)
disp('Error relativo Lagrange')
disp(error6l)

real = funcion(-1.4142);
f6v = polyval(coef50,-1.4142);
error6v = errorrelativo(real,f6v);
disp('Valor de la funcion f(-1.4142) en aproximacion Vandermonder')
disp(f6v)
disp('Error relativo Vandermonder')
disp(error6v)
aux = neville(-1.4142,puntosx50,puntosy50);
f6l = aux(50,50);
error6l = errorrelativo(real,f6l);
disp('Valor de la funcion f(-1.4142) en aproximacion Lagrange')
disp(f6l)
disp('Error relativo Lagrange')
disp(error6l)