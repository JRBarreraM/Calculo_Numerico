% POLINOMIO DE HERMITE

% Funcion que calcula la aproximacion del polinomio de Hermite con respecto
% a la funcion dada

% Entrada: c = Coeficientes del polinomio 
%          x = Vector con los puntos a tomar
%          t = Punto a evaluar

% Salida:  p = Polinomio evaluado en el punto

function [p] = hhermite(c,x,t)
    [n n] = size(c);
    for i=1:length(x);
        z(2*i-1) = x(i);
        z(2*i) = x(i);
    end
    p=hnewton(c,z,t);
end
