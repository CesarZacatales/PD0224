factorial(0,1) :- write('el factorial de cero es 1'),!.
factorial(1,1) :- !.
factorial(N,X) :- N1 is -(N,1),
                  factorial(N1,Y),
                  X is *(N,Y).