board([[b,b,b],[b,b,b],[b,b,b]]).

win(Dato,[[Dato,Dato,Dato],_,_]).
win(Dato,[_,[Dato,Dato,Dato],_]).
win(Dato,[_,_,[Dato,Dato,Dato]]).
win(Dato,[[Dato,_,_],[Dato,_,_],[Dato,_,_]]).
win(Dato,[[_,Dato,_],[_,Dato,_],[_,Dato,_]]).
win(Dato,[[_,_,Dato],[_,_,Dato],[_,_,Dato]]).
win(Dato,[[Dato,_,_],[_,Dato,_],[_,_,Dato]]).
win(Dato,[[_,_,Dato],[_,Dato,_],[Dato,_,_]]).

check_win(_,[[A,B,C],[D,E,F],[G,H,I]]):-
    \+ member(b,[A,B,C,D,E,F,G,H,I]),
    writeln('El juego ha terminado en empate!').
check_win(x,B) :-
    win(x,B),
    writeln('El jugador X ha ganado!').
check_win(o,B) :-
    win(o,B),
    writeln('El jugador O ha ganado!').

print_board([R1,R2,R3]):-
    writeln(R1),
    writeln(R2),
    writeln(R3).

tic_tac_toe :-
    board(B),
    play(1,B).

play(1,B) :-
    print_board(B),
    writeln('Turno del jugador X'),
    writeln('Ingrese posición:'),
    read(P),
    replace_position(x,P,B,B1),
    ( check_win(x,B1); play(2,B1) ).

play(2,B) :-
    print_board(B),
    writeln('Turno del jugador O'),
    writeln('Ingrese posición:'),
    read(P),
    replace_position(o,P,B,B1),
    ( check_win(o,B1); play(1,B1) ).

replace_position(Dato,1,[[b,D2,D3],R2,R3],[[Dato,D2,D3],R2,R3]).
replace_position(Dato,2,[[D1,b,D3],R2,R3],[[D1,Dato,D3],R2,R3]).
replace_position(Dato,3,[[D1,D2,b],R2,R3],[[D1,D2,Dato],R2,R3]).
replace_position(Dato,4,[R1,[b,D2,D3],R3],[R1,[Dato,D2,D3],R3]).
replace_position(Dato,5,[R1,[D1,b,D3],R3],[R1,[D1,Dato,D3],R3]).
replace_position(Dato,6,[R1,[D1,D2,b],R3],[R1,[D1,D2,Dato],R3]).
replace_position(Dato,7,[R1,R2,[b,D2,D3]],[R1,R2,[Dato,D2,D3]]).
replace_position(Dato,8,[R1,R2,[D1,b,D3]],[R1,R2,[D1,Dato,D3]]).
replace_position(Dato,9,[R1,R2,[D1,D2,b]],[R1,R2,[D1,D2,Dato]]).
