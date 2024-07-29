function [populacao]=Gera_Populacao_Aleatoria(INSTANCIA,TamPop)
populacao=[];
for(i=1:TamPop)

[solucao]=Gera_SOLUCAO_ALEATORIA(INSTANCIA);
%[solucao]=Reinicio_Aleatorio_I(solucao,10000);

populacao=[populacao;solucao];
end


end