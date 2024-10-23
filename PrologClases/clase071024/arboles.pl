show_tree([]):-!.
show_tree([P,L,R]):-
    write(P),
    write(','),
    show_tree(L),
    show_tree(R).



search_tree(_,[]):-!,fail.
search_tree(D,[D|_]):-!.
search_tree(D,[P,L,_]):-
    <(D,P),
    search_tree(D,L),
    !.
search_tree(D,[P,_,R]):-
    >(D,P),
    search_tree(D,R).


insertar_arbol(D,[],[D,[],[]]):-!.
insertar_arbol(D,[Padre,Izquierda,Derecha],A):-
    =<(D,Padre),
    insertar_arbol(D,Izquierda,Izquierda1),
    =(A,[Padre,Izquierda1,Derecha]),
    !.
insertar_arbol(D,[Padre,Izquierda,Derecha],A):-
    >(D,Padre),
    insertar_arbol(D,Derecha,Derecha1),
    =(A,[Padre,Izquierda,Derecha1]).

% Borrar dato en el arbol

remove_tree(D,[D,[],[]],[]):-!.
remove_tree(D,[D,[],R],R):-!.
remove_tree(D,[D,L,[]],L):-!.
remove_tree(D,[D,L,R],T):-
    find_ios(R,N),
    remove_tree(N,R,R1),
    =(T,[N,L,R1]),
    !.
remove_tree(D,[P,L,R],T):-
    <(D,P),
    remove_tree(D,L,L1),
    =(T,[P,L1,R]),
    !.
remove_tree(D,[P,L,R],T):-
    >(D,P),
    remove_tree(D,R,R1),
    =(T,[P,L,R1]).

find_ios([P,[],_],P):-!.
find_ios([_,L,_],N):-
    find_ios(L,N).