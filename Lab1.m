% Laboratorio #1
close all

% Ejercicio 1:

% 1.a
figure
intervalo = -3:0.1:3;
resultados_f = f(intervalo);
hold on
grid on
plot(intervalo,resultados_f,'-g');
title('Ejercicio 1');
xlabel('Eje de Abscisas');
ylabel('Eje de Ordenadas');
zoom on;

% 1.b
fprintf('Evaluacion en 1.2*10^(-8)')
f(1.2*10^(-8))

% 1.c
g = @(x) (0.5).*(((sin(x./2))./(x./2)).^2);
fprintf('Evaluacion en 1.2*10^(-8)')
g(1.2*10^(-8))
fprintf('\n')

% Resta de numeros muy parecidos numerador, division
% entre numeros muy pequeños. Mientras que en la segunda
% no tienes la resta de numeros muy pequeños, no tienes
% tanta diferencia en la division.
% Operar con numeros.

% Ejercicio 2:
figure
intervalo = (8*pi):0.01:(14*pi);
resultados_cos_Taylor=cos_Taylor(intervalo);
resultados_rcos=rcos(intervalo,51,1);
hold on
grid on
plot(intervalo,resultados_cos_Taylor,'-',intervalo,resultados_rcos,'--')
title('Ejercicio 2');
legend('iterativo','recursivo');
xlabel('Solo se toma en cuenta este intervalo, de las abscisas porque entre [0,45) es constantemente 0 en y');
ylabel('Eje de Ordenadas');
axis([40 45]);

% Ejercicio 3:
muestra = [10000000000, 10000000001, 10000000002];
n = length(muestra);
Sum = 0;
Sumsum = 0;

% 3.a
for entry = muestra,
  Sum = Sum + entry;
end;
media_aritmetica=Sum./n;
for entry = muestra,
  Sumsum = Sumsum + (entry-media_aritmetica).^2;
end;
V = (1/(n-1)).*(Sumsum)

% 3.b
Sum = 0;
Sumsum = 0;
for entry = muestra,
  Sum = Sum + entry;
end;
Sum = (1/n).*(Sum).^2;
for entry = muestra,
  Sumsum = Sumsum + ((entry).^2);
end;
V = (1/(n-1)).*(Sumsum - Sum)

% Conclusiones 3:
% Luego de hacer los calculos por fuentes externas se comprobo
% que el resultado correcto de la varianza es 1, tal y como lo
% indica 3.a. Esto se debe a que la primera formula realiza las
% operaciones aritmeticas entre los numeros de mayor orden y luego
% eleva al cuadrado el resultado generando resultados de menor orden que
% el ordenador puede representar con mayor exactitud. Por su parte 3.b 
% eleva cada numero de alto orden al cuadrado y luego opera entre ellos,
% estas cantidades exceden las capacidades del ordenador obligandolo a
% redondear y por tanto perdiendo exactitud, generando errores. Es de
% hacer notar que con numeros de orden mayor incluso 3.a tendria errores.