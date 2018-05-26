#Lab3_15-10123
disp('---Parte 2---');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---Ejercicio a---');

disp('---n=5---');
v=generarv(5);
T=generarT(v);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante ');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));

disp('---Eliminacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---n=25---');
v=generarv(25);
T=generarT(v);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante ');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));
disp('---Eliminacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---Ejercicio b---');
disp('---v = [-3; -2; -1; 0.01; 1; 2; 3]---');
v = [-3; -2; -1; 0.01; 1; 2; 3];
T=generarT(v);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante ');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));

disp('---Eliminacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---Parte 3---');
disp('---T = vander([0.5 0.6 0.7 0.8 0.9]);---');
T = vander([0.5 0.6 0.7 0.8 0.9]);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante ');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));
disp('---Eliminacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---T = vander([0.5 0.6 7 8 9 10 13]);---');
T = vander([0.5 0.6 7 8 9 10 13]);
unos=ones(length(T),1);
b=T*unos;
disp('Determinante ');
disp(det(T));
disp('Número de Condición');
disp(cond(T,inf));
disp('Autovalores');
disp(eig(T));

disp('---Eliminacion Gaussiana Sin Pivoteo---');
obtenido=gaussiana(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Eliminacion Gaussiana Con Pivoteo Parcial---');
obtenido=gaussipivot(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));

disp('---Factorizacion LU---');
obtenido=LU(T,b);
disp(obtenido);
disp('Error relativo');
disp(errorelativo(unos,obtenido));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---Parte 4---');
disp('---Inversa Mediante LU---')
disp('---T = vander([0.5 0.6 7 8 9 10 13]);---');
obtenido=inversaLU(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---T = vander([0.5 0.6 0.7 0.8 0.9]);---');
T = vander([0.5 0.6 0.7 0.8 0.9]);
obtenido=inversaLU(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---v = [-3; -2; -1; 0.01; 1; 2; 3]---');
v = [-3; -2; -1; 0.01; 1; 2; 3];
T=generarT(v);
obtenido=inversaLU(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---n=5---');
v=generarv(5);
T=generarT(v);
obtenido=inversaLU(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
disp(norm((T*obtenido)-eye(length(T)),inf));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('---n=25---');
v=generarv(25);
T=generarT(v);
obtenido=inversaLU(T);
disp('Norma Infinto de la matriz (A*A^-1)-I');
diferencia=((T*obtenido)-eye(length(T)));
disp(norm(diferencia,inf));
% La forma en la que se calcula la inversa a traves de la factorizacion LU,
% toma tiempo O(n^3).
% Como vemos la inversa es confiable excepto en el caso n=25.