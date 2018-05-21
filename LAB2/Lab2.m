A1 = [10^-8,-1,10^10;10,(10^-8)-10^7,1;1,-1,1];
b1 = A1 * [1;-1;1];
A2 = [4,-1,1;10^-9,10^-6,10^-9;10^-16,-10^-16,1];
b2 = A2 * [1;-1;1];

disp('---Parte 1---');

% b) Por teorema Rouche-Frobenius, si rango de A es igual al rango de la matriz
% ampliada de A con b, y esto igual al número de incógnitas, entonces 
% tenemos que el SEL tiene una única solución.
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

% Es sencillo ver que la aplicacion del pivoteo no hace mayor diferencia sobre
% sobre la matriz A2 pues esta es diagonal dominante. Mientras que en A1 el
% el primer pivote es un numero muy pequeno y dividir entre el causa errores.
% De alli la importancia del pivoteo con la aritmetica inexacta, si se usa
% aritmetica exacta realmente no hay diferencia.

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
% El determinante de si es cercano a 0, la matriz se hace casi singular para la
% aritmetica del computador lo cual dificulta el calculo de la inversa y la
% resolucion de SEL. El numero de condicion entre mas se aleja de 1 influye
% mas gravemente en la cota del error de salida dado en error en la entrada.
% Los autovalores de la matriz nos dan informacion relacionada a la singularidad,
% de la matriz, entre mas cercanos a 0, mas se comprometen los calculos, algo
% similar a lo ya explicado con el determinante.
% Pudimos ver que la relacion teorica siempre se verifica.

disp('---Parte 2---');
for n=2:13
  fprintf('Para');
  disp(n);
  Lab2abc(n);
end

figure;
resultados=zeros(3,1);
intervalo=zeros(3,1);

for k=1:12
  intervalo(k)=k+1;
end

for p=2:13
  resultados(p-1) = cond(hilb(p));
end

hold on;
grid on;
plot(intervalo,resultados,'-r');
title('Numero de Condicion vs Tamaño');
xlabel('Tamaño De La Matriz De Hilbert');
ylabel('Numero De Condicion De La Matriz');

% Con un n de 13 se puede apreciar un error relativo superior al 100%
% y con 12 inferior.
% Como conclusion se puede observar que la matriz para n = 13, poseia un
% numero de condicion tan grande que aun sin error en la entrada, el algoritmo
% estudiado poseia un error de mas del 100%. Tambien se observa que el crecimie-
% pronunciado de la grafica, muy superior al lineal en principio, se dispara
% para n=13. Por ultimo, vale la pena destacar la sorprende exactitud del algo-
% ritmo A\b.