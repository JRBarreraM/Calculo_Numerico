% FUNCION DERIVADA

% Funcion derivada a evaluar en este laboratorio

% Entrada: x = valor a evaluar

% Salida:  y = imagen de x

function [y] = fderivada(x)
    y = ((x^3 + x)*cos(x) - (x^2 - 1)*sin(x))/((x^2 + 1)^2);
end