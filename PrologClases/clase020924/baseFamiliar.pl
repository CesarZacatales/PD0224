%base familiar
madre(josefina, mario).
madre(josefina, ligia).
madre(silvia, marina).
madre(silvia, jaime).
madre(silvia, carlos).
madre(ligia, regina).
madre(ligia, jacinta).
madre(nemesia, tere).

padre(manuel, mario).
padre(manuel, ligia).
padre(mario, marina).
padre(mario, jaime).
padre(mario, carlos).
padre(julio, regina).
padre(julio, jacinta).
padre(carlos, tere).

antepasado(X, Y) :- padre(X, Y).

antepasado(X, Y) :- madre(X, Y).

antepasado(X, Y) :- padre(P, Y), antepasado(X, P).

antepasado(X, Y) :- madre(M, Y), antepasado(X, M).