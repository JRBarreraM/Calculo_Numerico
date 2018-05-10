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
u = sprintf('---Ejercicio c---');
disp(u);
u2 = sprintf('.Sin pivoteo');
disp(u2);
[G h] = gauss(A1,b1,0);
[I j] = gauss(A2,b2,0);
x1 = sustitucion(G,h);
x2 = sustitucion(I,j);
u3 = sprintf('Solucion A1');
disp(u3);
disp(x1);
u4 = sprintf('Solucion A2');
disp(u4);
disp(x2);
u5 = sprintf('.Con pivoteo');
disp(u5);
[G h] = gauss(A1,b1,1);
[I j] = gauss(A2,b2,1);
x3 = sustitucion(G,h);
x4 = sustitucion(I,j);
u6 = sprintf('Solucion A1');
disp(u6);
disp(x3);
u7 = sprintf('Solucion A2');
disp(u7);
disp(x4);