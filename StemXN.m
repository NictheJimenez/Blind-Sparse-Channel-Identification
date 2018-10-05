function [teoplesM1 teoplesM2 teoplesM3 teoplesM4 teoplesM5 vfinal tfinal] = StemXN(m,n,l,Q,M)

    alfa = m / (m+l);
    tvector = [];
    
    for i = 1:(n*(m+l))
       tvector = [tvector alfa]; 
    end

    vectores = round(10 * rand(n,m));
    f = [];    
    
    tM1 = [];
    tM2 = [];
    tM3 = [];
    tM4 = [];
    tM5 = [];    
    
    for i = 1:n        
        vector = vectores(i,:);
        svector = subvector(vector,l);
        nv = [svector vector];
        
        if i == 1
            tM1 = TeoplesNew(nv, M, Q);
        elseif i == 2
            tM2 = TeoplesNew(nv, M, Q);            
        elseif i == 3
            tM3 = TeoplesNew(nv, M, Q);            
        elseif i == 4
            tM4 = TeoplesNew(nv, M, Q);            
        elseif i == 5
            tM5 = TeoplesNew(nv, M, Q);            
        end
        
        f = [f,nv];        
    end
    
    teoplesM1 = tM1;
    teoplesM2 = tM2;
    teoplesM3 = tM3;
    teoplesM4 = tM4;
    teoplesM5 = tM5;    
    
    tfinal = tvector;
    vfinal = f;
    
return

