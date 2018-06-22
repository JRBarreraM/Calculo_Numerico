function Q(n,n) = Lagrange(x,pointx,pointy)
  n=length(pointx);
  Q=NaN*ones(n);
  for k=1:n
    Q(k,1)=pointy(k);
  for i=2:n
    for j=2:i
      Q(i,j)=(x-x(i-j))*Q(i,j-1)-(x-x(i))*Q(i-1,j-1)/(pointx(i)-pointx(i-j));
    end
  end