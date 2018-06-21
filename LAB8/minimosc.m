function gi=minimosc(x,n)

clc
close all

b=zeros(n+1,1);
g=zeros(n+1,n+1);
y=0;
h=0;
k = length(x);

%% Paso 1: Construcción de los coeficientes a0,a1,...

for i = drange(0:2*n)
    for j = drange(1:k)
         h = h + (x(j,1)^i);
         if (i>n)
             (1);
         else
             y = y + (x(j,1)^i)*x(j,2);
             b(i+1)=y;
         end
    end
    for t = drange(1:i+1)
        if (t>n+1)||(i+2-t>n+1)
           (1);
        else 
            g(t,i+2-t) = h;
        end
    end
        h=0;
        y=0;
end

y = g\b;

%% Paso Extra: Plateamiento del polinomio que ajusta la data

pp=0;
syms b;

for j = drange(1:n+1)
    w=pp + y(j)*(b^(j-1));
    pp=w;
end


%% Paso 2: Cálculo de los ymod

h = 0;
yi= zeros(k,1);

for i = drange(1:k)
    for j = drange(0:n)
        h = y(j+1)*(x(i,1)^j)+h;
    end
    yi(i)=h;
    h=0;
end

%% Paso 3: Hallar "y" promedio

h = 0;

for i = drange(1:k)
    h = h + x(i,2);
end

yp = h/k;

%% Paso 4: Cálculo de St

St = 0;

for i = drange(1:k)
    St = St + (yi(i)-x(i,2))^2;
end

%% Paso 5: Cálculo de Sf

Sf = 0;

for i = drange(1:k)
    Sf = Sf + (x(i,2)-yp)^2;
end

% Paso 6: cálculo de r^2 y r

R = (Sf-St)/Sf;
r = R^(1/2);

% Resultados

disp(w);
disp(['St: ' num2str(St,6) ' ; ''Sf: ' num2str(Sf,6) ' ; ''R: ' num2str(R,6) ' ; ''r: ' num2str(r,6) ' ; ']);
