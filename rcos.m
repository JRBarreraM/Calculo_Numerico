function cos = rcos(x,n,contador)
  if contador == n+1
    cos = (-1).^n;
  else
    cos = (((rcos(x,n,contador+1).*((x).^2))./((2*contador)*((2*contador) - 1))) + (-1)^(contador-1));
  end
endfunction