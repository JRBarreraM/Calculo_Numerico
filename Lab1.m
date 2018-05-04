% Laboratorio #1

% Ejercicio 1:
intervalo=[-3,3];
f=@(x) (1-cos(x))./((x).^2);
% 1.a
ezplot(f,intervalo)
% 1.b
f(1.2*10^(-8))
% 1.c
g=@(x) (0.5).*(((sin(x./2))./(x./2)).^2);
g(1.2*10^(-8))