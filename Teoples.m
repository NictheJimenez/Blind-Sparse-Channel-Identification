function [result] = Teoples(vectorm)

    %R = [1 -3 2 0 0 0 0; 0 1 -3 2 0 0 0; 0 0 1 -3 2 0 0; 1 0 -7 -6 0 0 0; 0 1 0 -7 -6 0 0];
    R = [1 -3 2 2 5 6 3; 0 1 -3 2 0 0 0; 0 0 1 -3 2 0 0; 1 0 -7 -6 0 0 0; 0 1 0 -7 -6 0 0];
    
    resV = [ones(1,7);ones(1,7);ones(1,7);ones(1,7);ones(1,7)];
    
    E = [9/4 67/12 7/2 0 0; 0 9/4 67/12 7/2 0; 0 0 9/4 67/12 7/2; -5/4 7/6 0 0 0; 0 -5/4 7/6 0 0; 0 0 -5/4 7/6 0; 0 0 0 -5/4 7/6];
    
    index = 0;
    
    for i = 1:5
       r = R(i,:);
       
       vBaseAux = ones(1,7);       
       
       if i < 4
           index = i-1;
       else
           index = i-4;
       end
       
       for j = 1:(8-i)           
           vBaseAux(j+(index)) = vBaseAux(j+(index)) * vectorm(j);
       end;
       
       resV(i,:) = resV(i,:) .* (vBaseAux .* r);       
       
    end

    result = resV;

end