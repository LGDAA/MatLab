function [solucao]=mutacao(solucao,tx)


    tx=floor(tx*solucao.Tamanho/100);
    
    for(i=1:tx)
    
        [solucao]=SWAP_ALEATORIO(solucao);
    
    end
[solucao]=Fitness(solucao);
end