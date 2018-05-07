function cos = cos_Taylor(x)
  cos = 0;
  for i=1:1:51
    cos = (cos + ((-1)^i)*((x.^(2*i))/(factorial(2*i))));
  end
endfunction