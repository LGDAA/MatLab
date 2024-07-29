function [MelhorSolucao]=rodaAG(INSTANCIA, tamanho_instancia)
%%Define tamanho da população
TamPop=10;
%%Define taxa de mutação (5% do tamanho da instancia, arredondado)
TxMutacao=ceil(tamanho_instancia * 0.05)
pause
%%Define tamanho de gerações
Geracoes=10;
%%Função que executa o algoritmo Genético
[MelhorSolucao]=Ags(INSTANCIA,TamPop,TxMutacao,Geracoes);

end