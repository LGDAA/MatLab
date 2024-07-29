function [MelhorSolucao]=Ags(INSTANCIA,TamPop,TxMutacao,Geracoes)


[populacao]=Gera_Populacao_Aleatoria(INSTANCIA,TamPop);

[populacao]=Ordena_Populacao(populacao);
MelhorSolucao=populacao(1);
tic
tF=toc;
while(tF<Geracoes)

%{
    for(j=1:TamPop)
        [populacao(j)]=BuscaLocal_2SWAP_PARCIAL(populacao(j));
    end
%}

   %  [populacao(1)]=BuscaLocal_2SWAP_PARCIAL(populacao(1));
   %   [populacao(2)]=BuscaLocal_2SWAP_PARCIAL(populacao(2));

    [individuo1,individuo2,populacao]=Elitismo(populacao);


    if(populacao(1).CUSTO<MelhorSolucao.CUSTO)
        MelhorSolucao=populacao(1);
        populacao(1).CUSTO;
    end


    [filho1,filho2]=cruzamento(individuo1,individuo2);


    populacao(end-1)=filho1;
    populacao(end)=filho2;

    for(j=1:TamPop)
        [populacao(j)]=mutacao(populacao(j),TxMutacao);
    end

tF=toc;
end



end