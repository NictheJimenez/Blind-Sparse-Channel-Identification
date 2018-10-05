function vresult = subvector(v,l)

    [a b] = size(v);   
    
    c = (b-l);
    
    mask = [];
    
    for i = (c+1):b
      s = v(i);
      mask = [mask,s]; 
    end

    vresult = mask;
    
return;
