function [p] = horner_for_hermite(c,t,x)
  [n n] = size(c);
  for i=1:length(x);
      z(2*i-1) = x(i);
      z(2*i) = x(i);
  end
  p=horner_desplazado(c,t,z);