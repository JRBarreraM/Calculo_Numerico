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
figure
hold on
title('Aproximacion por 17 puntos Hermite Vs Spline')

% aqui graficamos la funcion original
plot(intervalo250,fresultados_250,'*')
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
err_spline_inf = norm((fmedios_equi-spline_medios),inf)/norm(fmedios_equi,inf);
err_hermite_1 = norm((fmedios_equi-spline_medios),1)/norm(fmedios_equi,1);

fmedios_cheb=f(medios_cheb);
hermite_medios_cheby=NaN(16,1);
for j=1:16
  hermite_medios_cheby(j) = horner_for_hermite(hermite_17ptos,medios_cheb(j),chebyshev17);
end
err_hermite_inf = norm((fmedios_cheb-hermite_medios_cheby),inf)/norm(fmedios_cheb,inf);
err_hermite_1 = norm((fmedios_cheb-hermite_medios_cheby),1)/norm(fmedios_cheb,1);

% Ejericicio 2)
figure
butterfly();