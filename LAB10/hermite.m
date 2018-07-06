function coef = hermite(pointx,pointy,pointz)
    n = length(pointx);
    for i=1:n;
        z(2*i-1) = pointx(i);
        z(2*i) = pointx(i);
        Q(2*i-1,1) = pointy(i);
        Q(2*i,1) = pointy(i);
        Q(2*i,2) = pointz(i);
        if i~=1;
            Q(2*i-1,2) = (Q(2*i-1,1)-Q(2*i-2,1))/(z(2*i-1)-z(2*i-2));
        end
    end
    for i=3:2*n
        for j=3:i
            Q(i,j) = (Q(i,j-1)-Q(i-1,j-1))/(z(i)-z(i-j+1));
        end
    end
    for i=1:2*n
        coef(i)=Q(i,i);
    end