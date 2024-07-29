function [solucao]=Gera_SOLUCAO_ALEATORIA(INSTANCIA)
%% Enocntra tamanho da instancia
tINST=size(INSTANCIA);tINST=tINST(1);
%% Armazena informaççoes do problema na variavel soluçao
solucao.Tamanho=tINST;
solucao.INSTANCIA=INSTANCIA;
solucao.CUSTO=0;
%% Gera uma soluçao aleatoria 
solucao.TOUR=randperm(solucao.Tamanho);
solucao.TOUR=[solucao.TOUR solucao.TOUR(1)];
%% Calcula o Custo da Soluçao
[solucao]=Fitness(solucao);
end


