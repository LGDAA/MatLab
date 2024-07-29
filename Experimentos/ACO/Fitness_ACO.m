function [solucao]=Fitness_ACO(solucao,dist)


tINST=size(solucao.TOUR);tINST=tINST(2)-1;

custo=0;
for(i=1:tINST)

    custo=custo+dist(solucao.TOUR(i),solucao.TOUR(i+1));

end
solucao.CUSTO=custo;



end