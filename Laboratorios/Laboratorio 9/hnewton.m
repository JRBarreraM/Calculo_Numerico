% POLINOMIO DE NEWTON

% Funcion que calcula la aproximacion del polinomio de Newton con respecto
% a la funcion dada

% Entrada: c = Coeficientes del polinomio 
%          x = Vector con los puntos a tomar
%          t = Punto a evaluar

% Salida:  p = Polinomio evaluado en el punto

function [p] = hnewton(c,x,t)
    [n n] = size(c);
    p = c(n);
    for i = n-1:-1:1;
        p = p * (t - x(i)) + c(i);
    end
end