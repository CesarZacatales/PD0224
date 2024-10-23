% LONGITUD DE UNA LISTA
% Caso Base
longitud([],0) :- !.

longitud([_|Cola],N) :- longitud(Cola,N1), N is N1 + 1.


% SUMATORIA 
% Caso Base
sumatoria([],0) :- !.

sumatoria([Cabeza|Cola],Suma) :- sumatoria(Cola,SumaAux), is(Suma, +(SumaAux,Cabeza)).

% UNIR LISTAS
% Caso Base
unir([],[],0) :- !.
unir([],Lista2,Lista2) :- !.
unir([Cabeza1|Cola1], Lista2, NuevaLista) :- unir(Cola1,[Cabeza1|Lista2],NuevaLista). 

% INVERTIR LISTA
% Caso Base
invertir([],0) :- !.
invertir(Lista,Lista1) :- invertirAux(Lista,[],Lista1).

invertirAux([],Lista,Lista) :- !.
invertirAux([Cabeza|Cola],Lista1,ListaInvertida) :- invertirAux(Cola,[Cabeza|Lista1],ListaInvertida).

concatenar(L1, L2, L) :- invertir(L1, LR), unir(LR, L2, L).