% PUNTOS DE INTERPOLACION DE CHEBYSHEV

% Funcion que ajusta los puntos de interpolacion

% Entrada: intv1 = Lado izquierdo del invervalo (x,y) -> x
%          intv2 = Lado derecho del invervalo (x,y) -> y
%          cantidad = Numero de puntos a ajustar

% Salida:  puntos = Puntos ajustados por Chebyshev

function [puntos] = chebyshev(intv1,intv2,cantidad)
    puntos = zeros(1,cantidad);
    for i = 1:cantidad;
        puntos(1,i) = (1/2)*(intv1+intv2) + (1/2)*(intv2-intv1)*cos(((2*i-1)/(2*cantidad))*pi);
    end
    inv = puntos(cantidad:-1:1);
    puntos = inv;
end
