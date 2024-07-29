clear all
clc

Inst = importdata("Inst.txt");

for(i = 1:10)
    cd Instancias
    inst = char(Inst(i));
    coordenadas = load(inst);
    cd ..
    INSTANCIA = criarInstancia(coordenadas);
    cd SA
    SOL_AC = [];
    
    for(j = 1: 10)
    [solucao]=Gera_SOLUCAO_ALEATORIA(INSTANCIA.INSTANCIA);
    rodaSA;
    SOL_AC = [SOL_AC; solucao];
    end
    cd SOLUCAO
    [Ic, fim] = strtok(inst, '.');
    save(Ic, 'SOL_AC');
    cd ..
    cd ..
end
    %}