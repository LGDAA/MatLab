function [solucao]=SWAP_ALEATORIO(solucao)

solucao_aux=solucao.TOUR;

a=solucao.TOUR(2:end-1);
r=randi(solucao.Tamanho-2);
ci=a(r);
a(r)=[];
r=randi(solucao.Tamanho-3);
cj=a(r);
a(r)=[];


p1=find(solucao_aux==ci);
p2=find(solucao_aux==cj);


solucao_aux(p1)=cj;
solucao_aux(p2)=ci;

solucao.TOUR=solucao_aux;

[solucao]=Fitness(solucao);

end