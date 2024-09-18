suma(X,Y,Z) :- Z is X + Y.
%suma(X,Y,Z) :- Z +(X,Y).


resta(X,Y,RESPUESTA) :- RESPUESTA is X - Y.
%resta(X,Y,RESPUESTA) :- RESPUESTA is -(X,Y).

%multiplicar(X,Y,RESPUESTA) :- RESPUESTA is X * Y; write('hola').
multiplicar(X,Y,RESPUESTA) :- RESPUESTA is X * Y; write("hola").

ecuacion_primer_grado((A,B),X) :- A =\= 0; write('A no puede ser 0'); X is -B/A.

ecuacion_segundo_grado((A,B,C),X1,X2) :- A=:= 0, write('No se puede trabajar');
                                        D is (B*B - 4*A*C), 
                                        (D < 0 -> write('No hay solucion real');
                                        D =:= 0 -> 
                                        X1 is -B/(2*A),
                                        X2 is X1;
                                        D > 0 ->
                                        X1 is (-B + sqrt(D))/(2*A),
                                        X2 is (-B - sqrt(D))/(2*A)).


factorial(X) :-
  is(Prev, -(X,1)),
  factorial(X,Prev).

factorial(X, Prev) :-
  =:=(X, 0),
  writeln(1),
  !.

factorial(X, Prev) :-
  =:=(Prev, 0),
  writeln(X),
  !.
  
factorial(X, Prev) :-
  >(Prev, 0),
  is(Prod, *(X, Prev)),
  is(Newprev, -(Prev, 1)),
  factorial(Prod, Newprev).

% calcular el n-esimo termino de fibonnaci

fibo(1, 0) :- !.

fibo(2, 1) :- !.

fibo(N, Fn) :-
  is(Nm1, -(N, 1)),
  is(Nm2, -(N, 2)),
  fibo(Nm1, Fnm1),  
  fibo(Nm2, Fnm2),
  is(Fn, +(Fnm1, Fnm2)).