%Recursividad 
%Contar cantidad de elementos 

contar(A,A) :-
            writeln(A),
            !.

contar(A,B) :-
            writeln(A),
            is(Aaux, +(A,1)),
            contar(Aaux, B).		


