disp('---Parte 2---');

disp('---Ejercicio a---');

disp('---n=5---');
v=generarv(5);
T=generarT(v);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante de A1');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));
disp('---Eliminaacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminaacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---n=25---');
v=generarv(25);
T=generarT(v);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante de A1');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));
disp('---Eliminaacion Gaussiana Sin Pivoteo---');
disp(gaussiana(T,b));
disp('---Eliminaacion Gaussiana Con Pivoteo Parcial---');
disp(gaussipivot(T,b));
disp('---Factorizacion LU---');
disp(LU(T,b));

disp('---Ejercicio b---');
v = [-3; -2; -1; 0.01; 1; 2; 3];
T=generarT(v);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante de A1');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));
disp('---Eliminaacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminaacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Parte 3---');
disp('---T = vander([0.5 0.6 0.7 0.8 0.9]);---');
T = vander([0.5 0.6 0.7 0.8 0.9]);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante de A1');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));
disp('---Eliminaacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminaacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));


disp('---T = vander([0.5 0.6 7 8 9 10 13]);---');
T = vander([0.5 0.6 7 8 9 10 13]);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante de A1');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));

disp('---Eliminaacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminaacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Parte 4---');

disp('Número de Condición');
%disp(cond(A*inversa-eye(len(A)),inf));