#LAB8 Estudiante: Jose Barrera. Carnet: 1510123.

f = @(x) (x.*(sin(x)))./((x.^2).+1);

intervalo10 = -4*pi:17/20*pi:4*pi;

intervalo30 = -4*pi:35/128*pi:4*pi;

intervalo50 = -4*pi:41/256*pi:4*pi;

vandermond=make_vandermonde(intervalo10);

vandermond=make_vandermonde(intervalo30);

vandermond=make_vandermonde(intervalo50);

