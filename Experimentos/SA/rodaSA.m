%% Define metafora da temperatura
Temperatura_Inicial=180;
%% Parametro de resfriamento
alfa=1;
%% Define a quantidade de interaçao utilizada em cada temperatura 
Quatidade_Iteracao=100;
%% Funçao que executa o Simulated Anneling
[solucao]=SA(solucao,Temperatura_Inicial,Quatidade_Iteracao,alfa);