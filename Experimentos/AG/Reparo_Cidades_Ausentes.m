function [solucao]=Reparo_Cidades_Ausentes(solucao)


[cid_ause]=Cidades_Ausentes(solucao);

i=1;
while(i<=solucao.Tamanho)

    j=i+1;
    while(j<=solucao.Tamanho)
    
        if(solucao.TOUR(i)==solucao.TOUR(j))
            solucao.TOUR(j)=cid_ause(1);
            cid_ause(1)=[];
            j=solucao.Tamanho;
            i=0;
        end
       j=j+1; 
    end
i=i+1;    
end


end