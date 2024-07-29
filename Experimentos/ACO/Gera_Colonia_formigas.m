function [COLONIA] = Gera_Colonia_formigas(tf,n)
    COLONIA=[];
    for(k=1:tf)
        
        formiga.N=[1:n];
        formiga.TOUR=[];
        formiga.CUSTO=0;
        COLONIA=[COLONIA;formiga];
    end



    for(k=1:tf)
        
        ci=randi(n);
%ci=1;
        COLONIA(k).N(ci)=[];
        COLONIA(k).TOUR=[ci];
    
    end

        


end