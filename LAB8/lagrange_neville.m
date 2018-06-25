function X = lagrange_neville(x,pointx,pointy)
  n=length(pointx);
  Q=NaN(n);
  for k=1:1:n
    Q(k,1)=pointy(k);
  end
  for i=2:n
    for j=2:i
      Q(i,j)=((x-pointx(i-j+1))*Q(i,j-1)-(x-pointx(i))*Q(i-1,j-1))/(pointx(i)-pointx(i-j+1));
    end
  end
  X=Q(n,n);