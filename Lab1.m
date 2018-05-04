% Laboratorio #1

% Ejercicio 1:
intervalo=[-3,3];
f=@(x) (1-cos(x))./((x).^2);
% 1.a
ezplot(f,intervalo)
% 1.b
fprintf("Evaluacion en 1.2*10^(-8)")
f(1.2*10^(-8))
% 1.c
g=@(x) (0.5).*(((sin(x./2))./(x./2)).^2);
fprintf("Evaluacion en 1.2*10^(-8)")
g(1.2*10^(-8))

% Resta de numeros muy parecidos numerador, division
% entre numeros muy pequeños. Mientras que en la segunda
% no tienes la resta de numeros muy pequeños, no tienes
% tanta diferencia en la division.
% Operar con numeros.
% usb.numerico@gmail.com

% Ejercicio 3:
n=3
x=[1000000000 1000000001 1000000002]
Sum=0
Sumsum=0
% 1.a
for i=1:1:n
  Sum+=x[i];
 end
media_aritmetica=Sum*(1/n);
for i=1:1:n
  Sumsum+=(x[i]-media_aritmetica)^2; 
V=(1/n-1)*Sumsum

% 1.b
Sum=0
Sumsum=0
for i=1:1:n
  Sum+=x[i]
end
Sum=-(1/n)*(Sum)^2
for i=1:1:n
  Sumsum+=(x[i])^2
end
V=1/(n-1)*Sumsum+Sum