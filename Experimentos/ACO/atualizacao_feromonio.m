function [tau]=atualizacao_feromonio(COLONIA,tf,n,ro,tau)


%% caclulo delta tau

DELTA_TAU=[];
for(k=1:tf)

    formiga.delta=zeros(n,n);
 
    for(i=1:n)
%        size(COLONIA(k).TOUR(i))
%        size(COLONIA(k))
%save("COLONIA.mat","COLONIA")
%save("formiga.mat","formiga")
        formiga.delta(COLONIA(k).TOUR(i),COLONIA(k).TOUR(i+1))=1/COLONIA(k).CUSTO;
    end

    DELTA_TAU=[DELTA_TAU;formiga];

end

S=zeros(n,n);
for(k=1:tf)
    S=S+DELTA_TAU(k).delta;
end

tau=(1-ro)*tau+S;




end