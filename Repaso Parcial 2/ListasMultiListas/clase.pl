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

%CONTINUACION DE LA CLASE PASADA

concatenar(L1, L2, L) :- invertir(L1, LR), unir(LR, L2, L).

zip(L1, L2,L) :- longitud(L1, N1), longitud(L2, N2), =:=(N1, N2), zipAux(L1,L2,[], R), invertir(R, L).

zipAux([], [], L3, L3) :- !.

zipAux([H1 | T1], [H2 | T2], L3, L) :- =(H3, [H1, H2 | []]), zipAux(T1, T2, [H3 | L3], L).

%tarea realizar unZip

unZip([], [], []) :- !.

unZip([[H1, H2 | []] | T], L1, L2) :- unZip(T, L1Aux, L2Aux), =(L1, [H1 | L1Aux]), =(L2, [H2 | L2Aux]). 