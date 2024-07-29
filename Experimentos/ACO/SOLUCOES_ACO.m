function [COLONIA]=SOLUCOES_ACO(tf,n,tau,eta,alfa,beta,dist)

%% Gerar Colonia 
[COLONIA] = Gera_Colonia_formigas(tf,n);
%% Gerar Soluçoes
for(k=1:tf)

    for(i=1:n-1)
    
        [p] = probabilidade(COLONIA(k),tau,eta,alfa,beta);
        [ind] =  RouletteWheelSelection(p);
        if (isempty(ind))
            tP = size(p);
            ind = randi(tP(2));
        end
        cj=COLONIA(k).N(ind);
        COLONIA(k).N(ind)=[];
        COLONIA(k).TOUR=[COLONIA(k).TOUR cj];
    
    end
    
COLONIA(k).TOUR=[COLONIA(k).TOUR COLONIA(k).TOUR(1)];
[COLONIA(k)]=Fitness_ACO(COLONIA(k),dist);

end

end

