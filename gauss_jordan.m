function vaca = gauss_jordan(x1)

% x1=[1 1 1 1 0 0 6; 1 -1 -1 0 1 0 0; 2 -3 1 0 0 1 1]

n = (length(x1)-1)/2;

for i = drange(1:n)
    
    np = i;
    
    for j = drange(i:n-1)
        
        
        if abs(x1(j+1,i)) > abs(x1(j,i))
            
            np = j+1;
            
        end
        
        
        if np > i
            
            fc = x1(i,:);
            
            x1(i,:) = x1(np,:);
            
            x1(np,:) = fc;
            
        end
        
    end
    
end

for i = drange(1:n)
    
    x1(i,:) = x1(i,:)/x1(i,i);
    
    for j = drange(1:n)
        
        if (j<i)||(j>i)
       
            x1(j,:)=x1(j,:)-x1(j,i)*x1(i,:);
            
        end
        
    end
      
end

vaca = x1;
            