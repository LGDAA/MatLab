function [solucao_otima] = executaACO(INSTANCIA, n)
tf=15;
tL=180;

tic

dist=INSTANCIA.INSTANCIA;
eta=1./dist;
tau=ones(n,n);

alfa=1;
beta=1;
ro=0.5;

for(i=1:n)
dist(i,i)=0;
tau(i,i)=0;
end

custo_aux=inf;
solucao_otima=[];
tF=toc;
while(tF<tL)
%% Gerar Colonia 
[COLONIA]=SOLUCOES_ACO(tf,n,tau,eta,alfa,beta,dist);
%% Acrescentar e evaporar feromonio
[tau]=atualizacao_feromonio(COLONIA,tf,n,ro,tau);

for(j=1:tf)
    if(COLONIA(j).CUSTO<custo_aux)
        solucao_otima=COLONIA(j);
        custo_aux=COLONIA(j).CUSTO;
    end

end

tF=toc;
end

end