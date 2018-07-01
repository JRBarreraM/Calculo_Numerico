function [m] = derivada_geometrica(pointx,pointy)
  n=length(pointx);
  m=NaN(n-1,1);
  for i=1:n-1
    m(i)=(pointy(i+1)-pointy(i))/(pointx(i+1)-pointx(i));
  end