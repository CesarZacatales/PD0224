%Calcular la suma de los digitos de un numero
calc(0,_,_,_,_):- !.

calc(A,C,B,D,E):-
    sumardigitos(A,B,C,D,E).

sumardigitos(N,M,D,P,I):-
    number(N),
    sumar(N,0,M,0,D,0,P,0,I).

sumar(0,M,M,D,D,P,P,I,I):- !.

sumar(N,V,M,AuxD,D,AuxP,P,AuxI,I):-
    >(N,0),
    is(C,//(N,10)),
    is(Res, mod(N,10)),
    =:=(mod(Res,2),0),
    is(AuxP1, +(AuxP, 1)),
    is(V1, +(V,Res)),
    is(AuxD1, +(AuxD, 1)),
    sumar(C,V1,M,AuxD1,D,AuxP1,P,AuxI,I), !.

sumar(N,V,M,AuxD,D,AuxP,P,AuxI,I):-
    >(N,0),
    is(C,//(N,10)),
    is(Res, mod(N,10)),
    not(=:=(mod(Res,2),0)),
    is(AuxI1, +(AuxI, 1)),
    is(V1, +(V,Res)),
    is(AuxD1, +(AuxD, 1)),
    sumar(C,V1,M,AuxD1,D,AuxP,P,AuxI1,I), !.