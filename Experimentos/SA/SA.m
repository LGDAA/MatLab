function [solucao]=SA(solucao,Temperatura,Qt_ite,alfa)

%% Define uma constate de normalizaçao constante de normalizaçao ; 
K=1;

%% Laço referente a metafora da temperatura
tic
tF=toc;
    while(tF<Temperatura)
%% Laço referente a quantidade de iteraçao para cada temperatura
        for (i=1:Qt_ite)
%% Realiza um movimento aleatorio na soluçao atual (troca de duas cidades) 
            [nova_solucao]=SWAP_ALEATORIO(solucao);
%% Calcula a diferença entre custo das soluçoes
            delta=nova_solucao.CUSTO-solucao.CUSTO;
%% Condiçao de aceite caso ocorra melhoria na soluçao 
            if(delta<0)

                solucao=nova_solucao;

            else
%% Sorteiro de um numero aleatorio 
                r=rand(1);
%% Crirerio de aceite(  fuçao exponencial proporcional a delta e inversamente porporcional com a temperatura) 
                Criterio=exp(delta*K/Temperatura);
%% Nova condiçao de aceite
                if(r<Criterio)

                    solucao=nova_solucao;

                end
            end
%% Imprimir custo da soluçao a cada iteraçao


        end
    
%%    Decrecimo da temperatura
    %Temperatura=Temperatura-alfa*Temperatura;   
    tF=toc;
    
    end


end