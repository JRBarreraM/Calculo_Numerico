% Ejercicio 1

% Autor: David Segura

% Considere la funcion f(x) = int(exp(x)/x, x, 1, x)

clc,clear
format long;
syms x;

%% Inciso (a)
% Halle el polinomio de Taylor de grado 2 de f(x) alrededor de x0 = 1

f = int(exp(x)/x, x, 1, x);
g = polinomiotaylor(f,x,1,3);
disp('Polinomio de Taylor de grado 2 de f(x) alrededor de x0 = 1')
disp(g)

%% Inciso (b)
% Aproxime el valor de f(1.1) usando el polinomio de Taylor de grado 2
% determinado en el item anterior. Calcule el error relativo.

aprox = double(subs(g,1.1));
disp('f(1.1) usando el polinomio de Taylor calculado')
disp(aprox)

real = double(int(exp(x)/x, x, 1, 1.1));
aproximado = double(aprox);

error = errorrelativo(real,aproximado);
disp('Error relativo')
disp(error);