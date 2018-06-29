function c = lagrange_neville(pointx,pointy)
  c=pointy;
  n=length(pointy)
  for j=2:n
    for i=n:-1:j
      c(i)=((c(i)-c(i-1)))/(x(i)-x(i-j+1));
    end
  end