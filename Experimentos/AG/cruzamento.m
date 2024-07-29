function [filho1,filho2]=cruzamento(solucao1,solucao2)

filho1=solucao1;
filho2=solucao2;


s1=solucao1.TOUR(1:(end-1));
s2=solucao2.TOUR(1:(end-1));

r=randi(solucao1.Tamanho);

s1_a=s1(1:r);
s1_b=s1((r+1):end);

s2_a=s2(1:r);
s2_b=s2((r+1):end);


filho1.TOUR=[s1_a s2_b s1_a(1)];
filho2.TOUR=[s2_a s1_b s2_a(1)];

[filho1]=Reparo_Cidades_Ausentes(filho1);
[filho1]=Fitness(filho1);

[filho2]=Reparo_Cidades_Ausentes(filho2);
[filho2]=Fitness(filho2);


end