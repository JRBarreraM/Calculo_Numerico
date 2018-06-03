#LAB5 15-10123
load('datos20.mat');
a = A(1:20,1:20);
b1 = B(1:20,1);
b2 = B(1:20,2);
b3 = B(1:20,3);

disp("Jacobi x1");
tiempo=cputime;
x1=jacovi(a,b1,zeros(20,1),1500,10^-5);
tiempo

disp("");

disp("Gausseidel x1");
tiempo=cputime;
x1=gausseidel(a,b1,zeros(20,1),1500,10^-5);
tiempo

disp("");

disp("FactorizacionLU x1");
tiempo=cputime;
x1=FactorizacionLU(a,b1);
tiempo

disp("");

disp("Jacobi x2");
tiempo=cputime;
x2=jacovi(a,b2,ones(20,1),1500,10^-5);
tiempo

disp("");

disp("Gausseidel x2");
tiempo=cputime;
x2=gausseidel(a,b2,ones(20,1),1500,10^-5);
tiempo

disp("");

disp("FactorizacionLU x2");
tiempo=cputime;
x2=FactorizacionLU(a,b2);
tiempo

disp("");

disp("Jacobi x3");
tiempo=cputime;
x3=jacovi(a,b3,ones(20,1),1500,10^-5);
tiempo

disp("");

disp("Gausseidel x3");
tiempo=cputime;
x3=gausseidel(a,b3,ones(20,1),1500,10^-5);
tiempo

disp("");

disp("FactorizacionLU x3");
tiempo=cputime;
x3=FactorizacionLU(a,b3);
tiempo