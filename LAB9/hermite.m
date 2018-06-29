function c = hermite(pointx,pointy,pointz)
  c=pointy;
  n=length(pointy);
  for j=2:n
    for i=n:-1:j
      c(i)=((c(i)-c(i-1)))/(pointx(i)-pointx(i-j+1));
    end
  end