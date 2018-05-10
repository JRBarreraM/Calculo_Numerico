%Estudiante Jose Barrera 15-10123 Seccion B
function cos = cos_Taylor(x,n)
  cos = 0;
  for i=1:1:n
    cos = (cos + ((-1)^i)*((x.^(2*i))/(factorial(2*i))));
  end
end