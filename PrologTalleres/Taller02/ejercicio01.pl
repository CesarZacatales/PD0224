%HECHOS

calorias(oaella,200).
calorias(gazpacho,150).
calorias(consome,300).
calorias(filete,400).
calorias(pollo,280).
calorias(trucha,160).
calorias(bacalao,300).
calorias(flan,200).
calorias(nueces,500).
calorias(naranja,50).

%REGLAS valor_calorico/4

valor_calorico(X,Y,Z,V) :- calorias(X,A), calorias(Y,B), calorias(Z,C), is(V,+(A, +(B,C))). %forma general, 
                        %V is A+B+C. %forma directa o especifica.

comida_equilibrada(X,Y,Z) :- valor_calorico(X,Y,Z,V), V =< 800, write('la comida esta equilibrada con'), write(V), writeln('calorias'), !.

comida_equilibrada(X,Y,Z) :- valor_calorico(X,Y,Z,V), V > 800, write('la comida no esta equilibrada con'), write(V), writeln('calorias'), fail.