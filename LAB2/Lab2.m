A1 = [10^-8,-1,10^10;10,(10^-8)-10^7,1;1,-1,1];
b1 = A1 * [1;-1;1];
A2 = [4,-1,1;10^-9,10^-6,10^-9;10^-16,-10^-16,1];
b2 = A2 * [1;-1;1];

% b) Por teorema Rouche-Frobenius, si rg(A) =rg(A*), donde A* es la matriz
% ampliada de A con b, y esto igual al número de incógnitas, entonces 
% tenemos un SEL con una única solución.
y = sprintf('---Ejercicio b---');
disp(y);
C1 = [A1 b1];
if rank(A1) == rank(C1)
    if rank(A1) == length(A1)
        x = sprintf('El sistema A1 tiene solución única');
        disp(x);
    else
        x = sprintf('El sistema A1 no tiene solución única');
        disp(x);
    end
else
    x = sprinf('El sistema A1 no tiene solución única');
    disp(x);
end

C2 = [A2,b2];
if rank(A2) == rank(C2)
    if rank(A2) == length(A2)
        x = sprintf('El sistema A2 tiene solución única');
        disp(x);
    else
        x = sprintf('El sistema A2 no tiene solución única');
        disp(x);
    end
else
    x = sprintf('El sistema A2 no tiene solución única');
    disp(x);
end
disp('---Ejercicio c---');
disp('.Sin pivoteo');
disp('Solucion 1');
disp(gauss(A1,b1,0));
disp('Solucion 2');
disp(gauss(A2,b2,0));
disp('.Con pivoteo');
disp('Solucion 1');
disp(gauss(A1,b1,1));
disp('Solucion 2');
disp(gauss(A2,b2,1));
disp('Norma Inf. A1');
norm(A1,inf)
disp('Norma Inf. b1');
norm(b1,inf)
disp('Norma Inf. A2');
norm(A2,inf)
disp('Norma Inf. b2');
norm(b2,inf)
disp('Determinante de A1');
disp(det(A1));
disp('Determinante de A2');
disp(det(A2));
disp('Autovalor Maximo de A1');
disp(AutoMax(A1));
disp('Autovalor Maximo de A2');
disp(AutoMax(A2));