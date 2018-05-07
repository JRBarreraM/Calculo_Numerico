% Laboratorio #1
close all

clc

% Ejercicio 1:
intervalo = [-3,3];
f = @(x) (1-cos(x))./((x).^2);

% 1.a
ezplot(f,intervalo)
grid on
hold on
hold off

% 1.b
fprintf("Evaluacion en 1.2*10^(-8)")
f(1.2*10^(-8))

% 1.c
g = @(x) (0.5).*(((sin(x./2))./(x./2)).^2);
fprintf("Evaluacion en 1.2*10^(-8)")
g(1.2*10^(-8))
fprintf("\n")

% Resta de numeros muy parecidos numerador, division
% entre numeros muy pequeños. Mientras que en la segunda
% no tienes la resta de numeros muy pequeños, no tienes
% tanta diferencia en la division.
% Operar con numeros.

% Ejercicio 2:

intervalo = (8*pi):0.01:(14*pi);
resultados_cos_Taylor=cos_Taylor(intervalo);
resultados_rcos=rcos(intervalo,51,1);
plot(intervalo,resultados_cos_Taylor,'-r')
grid on
hold on
plot(intervalo,resultados_rcos,'-b')

% Ejercicio 3:
x = [1000000000, 1000000001, 1000000002];
n = length(x);
Sum = 0;
Sumsum = 0;

% 1.a
for entry = x,
  Sum = Sum + entry;
end;
media_aritmetica=Sum/n;
for entry = x,
  Sumsum = Sumsum + (entry-media_aritmetica)^2;
end;
V = (1/n-1)*Sumsum

% 1.b
Sum = 0;
Sumsum = 0;
for entry = x,
  Sum = Sum + entry;
end;
Sum = (1/n)*(Sum)^2;
for entry = x,
  Sumsum = Sumsum + ((entry)^2);
end;
V = (1/(n-1))*(Sumsum - Sum)