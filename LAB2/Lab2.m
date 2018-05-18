A1 = [10^-8,-1,10^10;10,(10^-8)-10^7,1;1,-1,1];
b1 = A1 * [1;-1;1];
A2 = [4,-1,1;10^-9,10^-6,10^-9;10^-16,-10^-16,1];
b2 = A2 * [1;-1;1];

disp('---Parte 1---');

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
obtenido=gauss(A1,b1,0);
disp(obtenido);
disp('Error relativo Solucion 1');
disp(errorelativo([1;-1;1],obtenido));

disp('Solucion 2');
obtenido=gauss(A2,b2,0);
disp(obtenido);
disp('Error relativo Solucion 2');
disp(errorelativo([1;-1;1],obtenido));

disp('.Con pivoteo');

disp('Solucion 1');
obtenido=gauss(A1,b1,1);
disp(obtenido);
disp('Error relativo Solucion 1');
disp(errorelativo([1;-1;1],obtenido));

disp('Solucion 2');
obtenido=gauss(A2,b2,1);
disp(obtenido);
disp('Error relativo Solucion 2');
disp(errorelativo([1;-1;1],obtenido));



disp('---Ejercicio d---');
disp('Determinante de A1');
disp(det(A1));
disp('Determinante de A2');
disp(det(A2));
disp('Número de Condición de A1');
disp(cond(A1));
disp('Número de Condición de A2');
disp(cond(A2));
disp('Autovalor Maximo y Minimo de A1');
disp(max_min_autovalores(A1));
disp('Autovalor Maximo y Minimo de A2');
disp(max_min_autovalores(A2));
disp('---Ejercicio e---');
disp('Se Verifica la Relacion para A1 sin pivote?');
disp(verificarrelacion(A1,b1,0));
disp('Se Verifica la Relacion para A1 con pivote?');
disp(verificarrelacion(A1,b1,1));
disp('Se Verifica la Relacion para A2 sin pivote?');
disp(verificarrelacion(A2,b2,0));
disp('Se Verifica la Relacion para A2 con pivote?');
disp(verificarrelacion(A2,b2,1));

disp('---Parte 2---');
for n=2:10
  fprintf('Para');
  disp(n);
  Lab2abc(n);
end

figure;
resultados=zeros(3,1);
intervalo=zeros(3,1);

for k=1:3
  intervalo(k)=k+1;
end

for p=2:4
  resultados(p-1) = cond(hilb(p));
end

hold on
grid on
plot(intervalo,resultados,'-r');
title('Numero de Condicion vs Tamaño');
xlabel('Tamaño De La Matriz De Hilbert');
ylabel('Numero De Condicion De La Matriz');