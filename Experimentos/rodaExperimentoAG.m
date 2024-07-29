clear all
clc

Inst = importdata("Inst.txt");

for(i = 1:2)
    cd Instancias
    inst = char(Inst(i));
    coordenadas = load(inst);
    cd ..
    INSTANCIA = criarInstancia(coordenadas);
    %%Define tamanho da instancia
    tamanho_instancia = size(INSTANCIA.Coordenadas, 1)
    pause
 %  
    cd AG
    SOL_AC = [];
    
    for(j = 1: 1)
    [MelhorSolucao]=rodaAG(INSTANCIA, tamanho_instancia);
    SOL_AC = [SOL_AC; MelhorSolucao];
    end
    cd SOLUCAO
    [Ic, fim] = strtok(inst, '.');
    save(Ic, 'SOL_AC');
    cd ..
    cd ..
end
    %}