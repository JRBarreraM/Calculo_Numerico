#LAB10 Estudiante: Jose Barrera. Carnet: 1510123.

% Ejericicio 1)

# Funcion
f = @(x) (sin(x.^2));

# Derivada
g = @(x) ((x).*2).*(cos((x).^2));

%% Parte 1)

%%% Calculamos todos los intervalos que requiere el ejercicio:
intervalo17 = linspace(-pi,pi,17);
chebyshev17 = crear_ptos_Chebyshev(-pi,pi,17);
intervalo250 = linspace(-pi,pi,250);

%%% Evaluamos la funcion f en los intervalos:
fresultados_17 = f(intervalo17);
fresultados_chebyshev17 = f(chebyshev17);
fresultados_250 = f(intervalo250);

%%% Evaluamos la funcion g en los intervalos para hermite:
gresultados_17 = g(chebyshev17);

%%% Calculamos el polinomio de hermite:
hermite_17ptos = hermite(chebyshev17,fresultados_chebyshev17,gresultados_17);

%%% Evaluamos los polinomios obtenidos para proceder a graficarlos:
horner_hermite_15=NaN(250,1);

for i=1:250
  horner_hermite_15(i) = horner_for_hermite(hermite_17ptos,intervalo250(i),chebyshev17);
end

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

%%% Finalmente Graficamos :

%%%% Grafica Para Polinomio De Newton

%figure
hold on
title('Aproximacion por 17 puntos Hermite Vs Spline')

% aqui graficamos la funcion original
%plot(intervalo250,fresultados_250,'*')
xlim([-pi,pi])
ylim([-1.5,1.5])

% aqui graficamos los puntos equidistantes para la aproximacion
plot(intervalo17,fresultados_17,'sr')
xlim([-pi,pi])
ylim([-1.5,1.5])

% aqui graficamos los puntos chebyshev para la aproximacion
plot(chebyshev17,fresultados_chebyshev17,'sg')
xlim([-pi,pi])
ylim([-1.5,1.5])

% aqui graficamos hermite
plot(intervalo250,horner_hermite_15,'-r')
xlim([-pi,pi])
ylim([-1.5,1.5])

% aqui graficamos spline cubico
plot(intervalo250,spline(intervalo17,fresultados_17,intervalo250),'--g')
xlim([-pi,pi])
ylim([-1.5,1.5])

legend("Funcion","Equidistantes","Chebyshev","Hermite","Spline Cubico")

% Luego de estudiar las graficas obtenidas, concluimos que:

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')

%% Parte 2)

% calculamos los puntos medios para cada intervalo
medios_cheb=ptosmedios(chebyshev17);

medios_equi=ptosmedios(intervalo17);

% calculamos el error relativo
spline_medios=spline(intervalo17,fresultados_17,medios_equi);
fmedios_equi=f(medios_equi);
err_spline_inf = norm((fmedios_equi-spline_medios),inf)/norm(fmedios_equi,inf)
err_spline_1 = norm((fmedios_equi-spline_medios),1)/norm(fmedios_equi,1)
numero_min_digitos=1

fmedios_cheb=f(medios_cheb);
hermite_medios_cheby=NaN(16,1);
for j=1:16
  hermite_medios_cheby(j) = horner_for_hermite(hermite_17ptos,medios_cheb(j),chebyshev17);
end
err_hermite_inf = norm((fmedios_cheb-hermite_medios_cheby),inf)/norm(fmedios_cheb,inf)
err_hermite_1 = norm((fmedios_cheb-hermite_medios_cheby),1)/norm(fmedios_cheb,1)
numero_min_digitos=7

% Justificamos que el numero minimo de digitos con que se aproxima a la solucion
% viene dado por error_relativo < 5*10^t, siendo t el numero de cifras significativas.

% Concluimos que la interpolacion de hermite con puntos de chebyshev es mas ajustada
% que la obtenida mediante splines cubicos.

% Ejericicio 2)
%butterfly();
title('Dibujo de mgk.jpg con splines y fill')
figure
hold on

t = 1:25;
px=[370.43,330.55,300.87,225.75,157.12,187.73,232.24,197,154.34,225.75,300.87,330.55,368.57,399.18,434.42,505.83,584.66,552.20,509.54,547.57,583.74,521.60,439.06,409.38,370.43];
py=[615.75,553.27,489.38,495.06,490.80,432.58,368.68,320.41,246.57,239.47,247.99,184.10,124.46,175.58,247.99,242.31,246.57,307.63,368.68,428.32,489.38,495.06,485.12,553.27,615.75];

th = linspace(1, 25);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'r', 'linewidth', 5)
hold on;
plot(px,py,'ro','linewidth',3)
whitebg('k')
fill(px,py,'r')

t = 1:7;
px=[298,255,299,432,509,430,298];
py=[246,365,489,459,368,279,246];
th = linspace(1, 7);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'k', 'linewidth', 5)

t = 1:7;
px=[440,484,434,306,231,313,440];
py=[489,372,246,281,367,459,489];
th = linspace(1, 7);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'k', 'linewidth', 5)

t = 1:7;
px=[345.62,376.73,389.40,379.03,344.47,335.25,345.62];
py=[394.99,394.99,368.76,335.53,337.28,367.01,394.99];
th = linspace(1, 7);
xh = interp1(t,px,th, 'spline');
yh = interp1(t,py,th, 'spline');
plot(xh, yh, 'k', 'linewidth', 5)
fill(px,py,'k')