#LAB8 Estudiante: Jose Barrera. Carnet: 1510123.

# Funcion
f = @(x) (x.*(sin(x)))./((x.^2).+1);

disp('Parte a')

# Calculamos las coordenadas x
intervalo10 = linspace(-4*pi,4*pi,10);
intervalo30 = linspace(-4*pi,4*pi,30);
intervalo50 = linspace(-4*pi,4*pi,50);
intervalo1000 = linspace(-4*pi,4*pi,1000);

# Calculamos el vector original y
resultados_10 = f(intervalo10);
resultados_30 = f(intervalo30);
resultados_50 = f(intervalo50);
resultados_1000 = f(intervalo1000);

# Calculamos la matriz de Vandermonde
vandermond10=vander(intervalo10);
vandermond30=vander(intervalo30);
vandermond50=vander(intervalo50);

# Calculamos el vector solucion
x10=vandermond10\resultados_10'
x30=vandermond30\resultados_30'
x50=vandermond50\resultados_50'

disp('Parte c)')

# Graficamos la aproximaciones para 10 puntos
subplot(3,2,[1,2]);
hold on
plot(intervalo1000,resultados_1000,'--g')
yv=Horner(x10,intervalo10);
plot(intervalo10,yv,'.r')
yn=NaN*ones(10,1);
for i=1:10
  yn(i)=lagrange_neville(intervalo10(i),intervalo10,resultados_10);
plot(intervalo10,yn,'-b')
legend('Original','Neville','Vandermonde');
title('10 puntos')

# Graficamos la aproximaciones para 30 puntos
subplot(3,2,[3,4]);
hold on
plot(intervalo1000,resultados_1000,'--g');
yv=Horner(x30,intervalo30);
plot(intervalo30,yv,'.r');
yn=NaN*ones(30,1);
for i=1:30
  yn(i)=lagrange_neville(intervalo30(i),intervalo30,resultados_30);
plot(intervalo30,yn,'-b');
legend('Original','Neville','Vandermonde');
title('30 puntos')

# Graficamos la aproximaciones para 50 puntos
subplot(3,2,[5,6]);
hold on
plot(intervalo1000,resultados_1000,'--g');
yn=NaN*ones(50,1);
for i=1:50
  yn(i)=lagrange_neville(intervalo50(i),intervalo50,resultados_50);
plot(intervalo10,yn,'-b');
yv=Horner(x50,intervalo50);
plot(intervalo50,yv,'.r');
legend('Original','Neville','Vandermonde');
title('50 puntos')