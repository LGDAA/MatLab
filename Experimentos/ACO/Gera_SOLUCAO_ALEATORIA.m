function [MelhorSolucao]=Gera_SOLUCAO_ALEATORIA(INSTANCIA)
%% Enocntra tamanho da instancia
tINST=size(INSTANCIA);tINST=tINST(1);
%% Armazena informaççoes do problema na variavel soluçao
MelhorSolucao.Tamanho=tINST;
MelhorSolucao.INSTANCIA=INSTANCIA;
MelhorSolucao.CUSTO=0;
%% Gera uma soluçao aleatoria 
MelhorSolucao.TOUR=randperm(MelhorSolucao.Tamanho);
MelhorSolucao.TOUR=[MelhorSolucao.TOUR MelhorSolucao.TOUR(1)];
%% Calcula o Custo da Soluçao
[MelhorSolucao]=Fitness(MelhorSolucao);
end


