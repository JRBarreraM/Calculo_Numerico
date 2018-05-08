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

% Conclusiones 1:
% Tal y como lo muestra la figura 1 el resultado de la funcion g evaluada en el
% punto cercano a 0, es una aproximacion mucho mejor que el de la funcion f, la
% cual excede el rango de la funcion. Este error es debido a que en la funcion f
% El numerador 1-cos(x) arroja 1.1102e-16 y el denominador 1.4400e-16.
% Mientras que la funcion g tiene como numerador 6.0000e-09 y denominador 
% 3.6000e-17.
% Con lo que en el primer caso tenemos la resta de numeros muy parecidos,
% seguida de una division entre cantidades de bajo orden.
% Mientras que en la segunda solo tenemos la division de numeros muy pequeños.

% Ejercicio 2:
figure
intervalo = (8*pi):0.01:(14*pi);
resultados_cos_Taylor=cos_Taylor(intervalo,51);
resultados_rcos=rcos(intervalo,51,1);
hold on
grid on
plot(intervalo,resultados_cos_Taylor,'-',intervalo,resultados_rcos,'--')
title('Ejercicio 2');
legend('iterativo','recursivo');
xlabel('Solo se toma en cuenta este intervalo, de las abscisas porque entre [0,45) es constantemente 0 en y');
ylabel('Eje de Ordenadas');
axis([40 45]);

% 2.c Errores Relativos:
fprintf('Evaluacion en 2pi')
fprintf('\n')
cos_Taylor(2*pi,51)           % ~= 100%
rcos(2*pi,51,1)               % ~= 0%
fprintf('\n')
fprintf('Evaluacion en 8pi')  
fprintf('\n')
cos_Taylor(8*pi,51)           % ~= 100%
rcos(8*pi,51,1)               % ~= 0%
fprintf('\n')
fprintf('Evaluacion en 16pi')
fprintf('\n')
cos_Taylor(16*pi,51)          % ~= (6.7587e+10) %
rcos(16*pi,51,1)              % ~= (6.7587e+10) %
fprintf('\n')
% La aproximacion como serie de Taylor es mas exacta en un principio
% pero para numeros muy grandes al poseer un factorial acumula errores.
% La aproximacion recursiva utiliza un algebra sencilla pero.

%2.e
fprintf('Evaluacion en 2pi')
fprintf('\n')
cos_Taylor(6,51)           % ~= 103.983%
rcos(6,51,1)               % ~= 3.983%
fprintf('\n')
fprintf('Evaluacion en 8pi')  
fprintf('\n')
cos_Taylor(12,51)           % ~= 115.615%
rcos(12,51,1)               % ~= 15.615%
fprintf('\n')
fprintf('Evaluacion en 16pi')
fprintf('\n')
cos_Taylor(25,51)          % ~= 100.87956 %
rcos(25,51,1)              % ~= 0.88 %
fprintf('\n')
% Los resultados mejoraron drasticamente, esto debido a que la parte entera,
% permitia que los datos de entrada fueran numeros entero mucho mas faciles
% de operar para el computador. Con lo cual se deduce que estos metodos son 
% inestables, pues pequenos cambios en la entrada pueden llegar a alterar,
% exponencialmente la salida.


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