function [individuo1,individuo2,populacao]=Elitismo(populacao)


[populacao]=Ordena_Populacao(populacao);

individuo1=populacao(1);
individuo2=populacao(2);

end