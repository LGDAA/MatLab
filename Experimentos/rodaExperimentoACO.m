clear all
clc

Inst = importdata("Inst.txt");


for(i = 1: 10)
    cd Instancias
    inst = char(Inst(i));
    coordenadas = load(inst);
    cd ..
    INSTANCIA = criarInstancia(coordenadas);
    cd ACO
    SOL_AC = [];
    

    
    for(j = 1: 10)
       
    n=size(INSTANCIA.Coordenadas);n=n(1);
    [solucao_otima] = executaACO(INSTANCIA, n);
    SOL_AC = [SOL_AC; solucao_otima];
    end
    cd SOLUCAO
    [Ic, fim] = strtok(inst, '.');
    save(Ic, 'SOL_AC');
    cd ..
    cd ..

end
    %}