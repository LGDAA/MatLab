function PlotACO_OTIMA(solucao,instancia,n)

N1=[];
for(i=1:n)
    N1=[N1;[solucao.TOUR(i) solucao.TOUR(i+1)]];
end
g1 = digraph(N1(:,1),N1(:,2));



X=instancia.Coordenadas;


plot(g1, 'XData', X(:,1), 'YData', X(:,2));






end