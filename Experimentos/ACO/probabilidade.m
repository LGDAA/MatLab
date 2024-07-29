function [p] = probabilidade(formiga,tau,eta,alfa,beta)

p=[];
%% Arrumar somatorio para somente olhar as os vertices viaveis

ci=formiga.TOUR(end);
tN=size(formiga.N);tN=tN(2);


S=0;
for(l=1:tN)
    S=S+(tau(ci,formiga.N(l))^alfa)*(eta(ci,formiga.N(l))^beta);
end


for(j=1:tN)

pj=(tau(ci,formiga.N(j))^alfa)*(eta(ci,formiga.N(j))^beta)/S;

p=[p pj];

end


end