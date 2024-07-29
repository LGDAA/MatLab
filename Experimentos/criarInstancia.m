function [INSTANCIA] = criarInstancia(coordenadas)
    [ta,tb] = size(coordenadas);
    matriz = ones(ta,ta);
    for (i = 1 : ta)
        for(j = 1: ta)
            d = sqrt(((coordenadas(i,1) - coordenadas(j,1))^2) + ((coordenadas(i,2) - coordenadas(j,2))^2));
            matriz(i,j) = d;
            matriz(j,i) = d;
            INSTANCIA = struct('INSTANCIA', matriz, 'Coordenadas', coordenadas);
        end
    end
end