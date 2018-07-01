% COEFICIENTES DEL POLINOMIO DE NEWTON

% Funcion que calcula los coeficientes del polinomio de Newton

% Entrada: x = Vector con los puntos a tomar
%          f = Vector con los puntos evaluados en la funcion

% Salida:  c = Vector con los coeficientes

function [c] = newton(x,f)
    [n n] = size(x);
    c = zeros(1,n);
    for i = 1:n;
        c(i) = f(i);
    end
    for j = 2:n;
        for i = n:-1:j;
            c(i) = (c(i) - c(i-1))/(x(i) - x(i-j+1));
        end
    end
end
