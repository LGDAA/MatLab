%% Funçao para calcular custo
function [solucao]=Fitness(solucao)
%% Encontra o tamanho da soluçao
tINST=size(solucao.INSTANCIA);tINST=tINST(1);
%% Inicia variavel custo
custo=0;
%% Laço para percorrer a soluçao

for(i=1:tINST)
%% Calcula custo entre cada aresta
    custo=custo+solucao.INSTANCIA.INSTANCIA(solucao.TOUR(i),solucao.TOUR(i+1));
end
%% Salva custo da Soluçao
solucao.CUSTO=custo;
end