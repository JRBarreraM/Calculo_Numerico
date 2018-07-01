#LAB9 Estudiante: Jose Barrera. Carnet: 1510123.

% Ejericicio 1)

# Funcion
f = @(x) (x.*(sin(x)))./((x.^2).+1);

# Derivada
g = @(x) -((((x.^2)-1).*(sin(x))).+((-(x.^3)-x).*cos(x)))./(((x.^2).+1).^2);

%% Parte a)

%%% Calculamos todos los intervalos que requiere el ejercicio:
intervalo15 = linspace(-4*pi,4*pi,15);
intervalo25 = linspace(-4*pi,4*pi,25);
intervalo30 = linspace(-4*pi,4*pi,30);
intervalo50 = linspace(-4*pi,4*pi,50);
intervalo250 = linspace(-4*pi,4*pi,250);

%%% Evaluamos la funcion f en los intervalos:
fresultados_15 = f(intervalo15);
fresultados_25 = f(intervalo25);
fresultados_30 = f(intervalo30);
fresultados_50 = f(intervalo50);
fresultados_250 = f(intervalo250);

%%% Evaluamos la funcion g en los intervalos para hermite:
gresultados_15 = g(intervalo15);
gresultados_25 = g(intervalo25);

%%% Calculamos el polinomio de newton para 30 y 50 puntos:
newton_30ptos = newton(intervalo30,fresultados_30);
newton_50ptos = newton(intervalo50,fresultados_50);

%%% Evaluamos los polinomios obtenidos para proceder a graficarlos:
horner_newton_30=NaN(250,1);

for i=1:250
  horner_newton_30(i) = horner_desplazado(newton_30ptos,intervalo250(i),intervalo30);
end

horner_newton_50=NaN(250,1);

for i=1:250
  horner_newton_50(i) = horner_desplazado(newton_50ptos,intervalo250(i),intervalo50);
end

%%% Calculamos el polinomio de hermite para 15 y 25 puntos:
hermite_15ptos = hermite(intervalo15,fresultados_15,gresultados_15);
hermite_25ptos = hermite(intervalo25,fresultados_25,gresultados_25);

%%% Evaluamos los polinomios obtenidos para proceder a graficarlos:
horner_hermite_15=NaN(250,1);

for i=1:250
  horner_hermite_15(i) = horner_for_hermite(hermite_15ptos,intervalo250(i),intervalo15);
end

horner_hermite_25=NaN(250,1);

for i=1:250
  horner_hermite_25(i) = horner_for_hermite(hermite_25ptos,intervalo250(i),intervalo25);
end

%% Parte c)
%%% Calculamos todos los intervalos que requiere el ejercicio:
chebyshev15 = crear_ptos_Chebyshev(-4*pi,4*pi,15);
chebyshev25 = crear_ptos_Chebyshev(-4*pi,4*pi,25);
chebyshev30 = crear_ptos_Chebyshev(-4*pi,4*pi,30);
chebyshev50 = crear_ptos_Chebyshev(-4*pi,4*pi,50);

%%% Evaluamos la funcion f en los intervalos:
fresultados_chebyshev15 = f(chebyshev15);
fresultados_chebyshev25 = f(chebyshev25);
fresultados_chebyshev30 = f(chebyshev30);
fresultados_chebyshev50 = f(chebyshev50);

%%% Evaluamos la funcion g en los intervalos para hermite:
gresultados_chebyshev15 = g(chebyshev15);
gresultados_chebyshev25 = g(chebyshev25);

%%% Calculamos el polinomio de newton para 30 y 50 puntos:
newton_chebyshev30ptos = newton(chebyshev30,fresultados_chebyshev30);
newton_chebyshev50ptos = newton(chebyshev50,fresultados_chebyshev50);

%%% Evaluamos los polinomios obtenidos para proceder a graficarlos:
horner_newton_chebyshev30=NaN(250,1);

for i=1:250
  horner_newton_chebyshev30(i) = horner_desplazado(newton_chebyshev30ptos,intervalo250(i),chebyshev30);
end

horner_newton_chebyshev50=NaN(250,1);

for i=1:250
  horner_newton_chebyshev50(i) = horner_desplazado(newton_chebyshev50ptos,intervalo250(i),chebyshev50);
end

%%% Calculamos el polinomio de hermite para 15 y 25 puntos:
hermite_chevyshev15ptos = hermite(chebyshev15,fresultados_chebyshev15,gresultados_chebyshev15);
hermite_chevyshev25ptos = hermite(chebyshev25,fresultados_chebyshev25,gresultados_chebyshev25);

%%% Evaluamos los polinomios obtenidos para proceder a graficarlos:

horner_hermite_chebyshev15=NaN(250,1);

for i=1:250
  horner_hermite_chebyshev15(i) = horner_for_hermite(hermite_chevyshev15ptos,intervalo250(i),chebyshev15);
end

horner_hermite_chebyshev25=NaN(250,1);

for i=1:250
  horner_hermite_chebyshev25(i) = horner_for_hermite(hermite_chevyshev25ptos,intervalo250(i),chebyshev25);
end

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

%%% Finalmente Graficamos :

%%%% Grafica Para Polinomio De Newton
figure
subplot(2,2,[1,2]);
hold on
title('Aproximacion por polinomio de Newton 30 puntos')

% aqui graficamos la funcion original
plot(intervalo250,fresultados_250,'b')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos equidistantes para la aproximacion
plot(intervalo30,fresultados_30,'sr')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos chebyshev para la aproximacion
plot(chebyshev30,fresultados_chebyshev30,'sg')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos newton_30ptos
plot(intervalo250,horner_newton_30,'-r')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos newton_chebyshev30ptos
plot(intervalo250,horner_newton_chebyshev30,'-g')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

legend("Funcion","Equidistantes","Chebyshev","Newton Eq","Newton Cheb")

subplot(2,2,[3,4]);
hold on
title('Aproximacion por polinomio de Newton 50 puntos')

% aqui graficamos la funcion original
plot(intervalo250,fresultados_250,'b')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos equidistantes para la aproximacion
plot(intervalo50,fresultados_50,'sr')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos chebyshev para la aproximacion
plot(chebyshev50,fresultados_chebyshev50,'sg')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos newton_50ptos
plot(intervalo250,horner_newton_50,'-r')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos newton_chebyshev50ptos
plot(intervalo250,horner_newton_chebyshev50,'-g')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

legend("Funcion","Equidistantes","Chebyshev","Newton Eq","Newton Cheb")

%%%% Grafica Para Polinomio De Hermite
figure
subplot(2,2,[1,2]);
hold on
title('Aproximacion por polinomio de Hermite 15 puntos')

% aqui graficamos la funcion original
plot(intervalo250,fresultados_250,'b')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos tomados para la aproximacion
plot(intervalo15,fresultados_15,'sr')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos chebyshev para la aproximacion
plot(chebyshev15,fresultados_chebyshev15,'sg')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos hermite_15ptos
plot(intervalo250,horner_hermite_15,'-r')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos hermite_chevyshev15ptos
plot(intervalo250, horner_hermite_chebyshev15,'-g')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

legend("Funcion","Equidistantes","Chebyshev","Hermite Eq","Hermite Cheb")

subplot(2,2,[3,4]);
hold on
title('Aproximacion por polinomio de Hermite 25 puntos')

% aqui graficamos la funcion original
plot(intervalo250,fresultados_250,'b')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos tomados para la aproximacion
plot(intervalo25,fresultados_25,'sr')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos los puntos chebyshev para la aproximacion
plot(chebyshev25,fresultados_chebyshev25,'sg')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos hermite_25ptos
plot(intervalo250,horner_hermite_25,'-r')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

% aqui graficamos hermite_chevyshev25ptos
plot(intervalo250,horner_hermite_chebyshev25,'-g')
xlim([-4*pi,4*pi])
ylim([-0.4,0.6])

legend("Funcion","Equidistantes","Chebyshev","Hermite Eq","Hermite Cheb")

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

% Ejericicio 2)
%% Datos De la Tabla:
tiempo=[0,3,5,8,13];
distancia=[0,225,383,623,993];
velocidad=[75,77,80,74,72];
intervalo = linspace(0,13,100);

hermite_movil = hermite(tiempo,distancia,velocidad);
horner_hermite_movil=NaN(100,1);

for i=1:100
  horner_hermite_movil(i) = horner_for_hermite(hermite_movil,intervalo(i),tiempo);
end

figure
hold on
title('Aproximacion De Hermite al Recorrido')
plot(tiempo,distancia,'sr')
plot(intervalo,horner_hermite_movil,'-g')
xlim([0,13])
xlabel('Tiempo (Segundos)')
ylabel('Distancia (Pies)')
legend("Puntos Dados","Hermite")
ylim([0,1000])

distancia_10s = horner_for_hermite(hermite_movil,10,tiempo)

% Luego de obtener el polinomio lo graficamos,
% Observamos que supera los 80 pies por segundo y tiene una velocidad maxima de:
% 