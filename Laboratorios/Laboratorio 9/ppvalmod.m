% PUNTOS APROXIMADOS POR SPLINE CUBICO

% Funcion que calcula el polinomio de cada punto evaluando los coeficientes

% Entrada: a = Coeficientes del polinomio aproximado por Spline Cubico
%          b = Coeficientes del polinomio aproximado por Spline Cubico
%          c = Coeficientes del polinomio aproximado por Spline Cubico
%          d = Coeficientes del polinomio aproximado por Spline Cubico
%          t = Vector con la cantidad de puntos a aproximar

% Salida:  y = Puntos aproximados por Spline Cubico

function [y] = ppvalmod(a,b,c,d,t)
    y = [];
    for i=1:length(t) - 1
      xx = linspace(t(i), t(i+1), 100);
      yy = evaluar([a(i), b(i), c(i), d(i)], xx, t(i));
      y = [y, yy];
    end
end