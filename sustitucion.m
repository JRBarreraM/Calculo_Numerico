% Sustituci�n hacia atr�s
% Funci�n que aplica el metodo de sustituci�n hacia atras para
% resolver la matriz triangular superior con su vector
% solucion
% Entradas:	C = Matriz triangular superior
% 			d = Vector solucion de la matriz C
% Salida: solucion = solucion del sistema de ecuaciones lineal
function solucion = sustitucion(C,d)
    [n m]=size(C);
    for i = n:-1:1
        sum = 0;
        for j=i+1:n
            sum = sum + C(i,j)*x(j);
        end
        x(i) = (d(i) - sum)/C(i,i);
    end
    solucion = x';
end
    