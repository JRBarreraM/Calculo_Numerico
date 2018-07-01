% OBTENER SPLINE

% Funcion que calcula los puntos para el Spline Cubico

% Entrada: puntosx1 = Puntos en x que se aproximaran por Spline
%          puntosy1 = Puntos en y que se aproximaran por Spline

% Salida: x1 = Puntos en x aproximados por Spline Cubico
%         y1 = Puntos en y aproximados por Spline Cubico

function [x1,y1] = sacarspline(puntosx1, puntosy1)
    for x=1:length(puntosx1);
        t(x) = x;
    end
    [ax1,bx1,cx1,dx1] = splinecubico(t,puntosx1);
    [ay1,by1,cy1,dy1] = splinecubico(t,puntosy1);
    [x1] = ppvalmod(ax1,bx1,cx1,dx1,t);
    [y1] = ppvalmod(ay1,by1,cy1,dy1,t);
end

