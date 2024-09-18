%HECHOS

%MAMIFEROS
%tiene pelo/1
tiene_pelo(perro).
tiene_pelo(gato).
tiene_pelo(elefante).
tiene_pelo(leon).
da_leche(perro).
da_leche(elefante).
da_leche(leon).
da_leche(gato).

%vuela/1
vuela(halcon).
vuela(aguila).
vuela(pinguino).

%pone_huevos/1
pone_huevos(aguila).
pone_huevos(pinguino).

% PECES
%tiene_escamas/1
tiene_escamas(salmon).
tiene_escamas(atun).
tiene_escamas(trucha).

vive_en_agua(salmon).
vive_en_agua(trucha).

%ANFIBIOS
vive_en_agua(rana).
vive_en_tierra(rana).
pone_huevos(rana).

%REPTILES

%tiene_escamas/1
tiene_escamas(serpiente).
tiene_escamas(cocodrilo).
pone_huevos(cocodrilo).
pone_huevos(serpiente).

%REGLAS

es_mamifero(X) :- tiene_pelo(X), da_leche(X).

es_ave(X) :- vuela(X), pone_huevos(X).

es_pez(X) :- tiene_escamas(X), vive_en_agua(X).

es_anfibio(X) :- vive_en_agua(X), vive_en_tierra(X), pone_huevos(X).

es_reptil(X) :- tiene_escamas(X), pone_huevos(X).

