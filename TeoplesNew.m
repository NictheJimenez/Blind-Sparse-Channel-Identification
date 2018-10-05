function [result] = TeoplesNew(vectorm, M, Q)

    matriz = zeros(((M+Q)-1), Q);

    for i=1:Q
        matrizAux = matriz(:,i);
        for j=0:M-1           
            
            matrizAux(j+i) = vectorm(j+1);
            
        end        
        
        matriz(:,i) = matrizAux;
        
    end   
    
    result = matriz;
    
end