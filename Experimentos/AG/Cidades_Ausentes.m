function [cid_ause]=Cidades_Ausentes(solucao)
%% guarda posiçao e cidades repetidas
    cid_ause=[];
    for(i=1:solucao.Tamanho)
    cont=0;
    sinal=0;
        for(j=1:solucao.Tamanho+1)
        
            if (solucao.TOUR(j)==i)
                sinal=1;
                j=solucao.Tamanho+2;
            end
        end
        if(sinal==0)
    
            cid_ause=[cid_ause i];
        end
    end
end