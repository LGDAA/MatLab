function [populacao]=Ordena_Populacao(populacao)

%% Ordena os custos das colunas da população gerada em ordem crescente e pega seus índices
[~,index] = sortrows([populacao.CUSTO].'); 
populacao = populacao(index);

end