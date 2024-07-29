%% Exemplo para rodar o Simulated Anneling sem busca local
clear all
clc

%% Carrega uma instancia simetrica (n=100)
load("INSTANCIA.mat")

%% O arquivo INSTANCIA.mat carrega um struct contendo os seguintes campos: 
%% INSTANCIA.INSTANCIA -> refere-se a Matriz de adjacencia 100x100
%% INSTANCIA.Coordenadas -> refere-se as coordenadas entre os pares de cidades  

%% Funçao para gerar uma soluçao
[solucao]=Gera_SOLUCAO_ALEATORIA(INSTANCIA.INSTANCIA)

%% Recebe como entrada a matriz de adjacencia
%% Forcece como saida uma soluçao
%% A variavel de saida (solucao) e um struct contendo os seguintes campos:
%% solucao.Tamanho -> tamanho da instancia
%% solucao.INSTANCIA -> matriz de adjacencia
%% solucao.CUSTO -> custo da solçao
%% solucao.TOUR -> sequencia de visitas da cidade


%% Define parametros livres do algoritmo Simulated Anneling
%% Define metafora da temperatura
Temperatura_Inicial=10;
%% Parametro de resfriamento
alfa=0.1;
%% Define a quantidade de interaçao utilizada em cada temperatura 
Quatidade_Iteracao=1000;
%% Funçao que executa o Simulated Anneling
[solucao]=SA(solucao,Temperatura_Inicial,Quatidade_Iteracao,alfa);
