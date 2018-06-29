#LAB9 Estudiante: Jose Barrera. Carnet: 1510123.

# Funcion
f = @(x) (x.*(sin(x)))./((x.^2).+1);
# Derivada

g = @(x) (((x.^3).*(cos(x))).-((x.^2).*(sin(x))).+(x.*(cos(x))).+(x.*(sin(x))))./(((x.^2).+1).^2);
%% Parte a)
intervalo30 = linspace(-4*pi,4*pi,30);
intervalo50 = linspace(-4*pi,4*pi,50);

fresultados_30 = f(intervalo30);
fresultados_50 = f(intervalo50);

gresultados_30 = g(intervalo30)';
gresultados_50 = g(intervalo50)';

newton_30ptos = newton(intervalo30,resultados_30)'
newton_50ptos = newton(intervalo50,resultados_50)'

horner_desplazado(newton_30ptos,intervalo30,intervalo30)
horner_desplazado(newton_30ptos,intervalo30,intervalo30)

%hermite_30ptos = hermite(intervalo30,fresultados_30,gresultados_30)
%hermite_50ptos = hermite(intervalo50,fresultados_50,gresultados_50)