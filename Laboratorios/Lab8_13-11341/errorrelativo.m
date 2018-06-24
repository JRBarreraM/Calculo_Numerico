% Error Relativo
% Función que calcula el error relativo en base a la norma infinito
% de la diferencia de dos matrices.
% Entradas:	a = Matriz
%           b = Matriz

% Salida: c = Error relativo

function c = errorrelativo(a,b)
    c = norm((a-b),inf)/norm(a,inf);