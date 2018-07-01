% EVALUACION DE COEFICIENTES

% Funcion que calcula el polinomio de cada punto evaluando los coeficientes

% Entrada: c = Vector de coeficientes a,b,c,d
%          x = Vector con puntos a evaluar
%          t = Valor

% Salida:  p = Polinomio evaluado

function [p] = evaluar(c,x,t)
    [n,n] = size(c);
    p = c(n);
    for i = n-1:-1:1;
        p = p .* (x-t) + c(i);
    end
end
