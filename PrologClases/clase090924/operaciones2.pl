%segunda version

ecuacion_segundo_grado(0,_,_,_,_) :- !, write('A no puede ser 0'), fail.

ecuacion_segundo_grado(A,B,C,_,_) :- D is (B*B-(4*A*C)), D<0, !, write('No hay solucion real'),!, fail.

ecuacion_segundo_grado(A,B,C,X1,X2) :- D is (B*B-(4*A*C)), D=:=0, X1 is -B/(2*A), X2 is X1, !. 

ecuacion_segundo_grado(A,B,C,X1,X2) :- D is (B*B-(4*A*C)), X1 is (-B+sqrt(D))/(2*A), X2 is (-B-sqrt(D))/(2*A). 

%Factorial
factorial(0,1) :- write('el factorial de cero es 1'),  !.
factorial(1,1) :- write('el factorial de 1 es 1'),!.
factorial(N,X) :- N1 is -(N,1), factorial(N1,Y), X is *(N,Y).

%Fibonacci
fibonacci(1,1) :- !.
fibonacci(2,1) :- !.
fibonacci(N,X) :- N1 is -(N,1), N2 is -(N,2), fibonacci(N1,Y), fibonacci(N2,Z), X is +(Y,Z).

%sumatoria
sumatoria(0,0) :- write('la sumatoria da 0'),!.
sumatoria(N,X) :- N1 is -(N,1), sumatoria(N1,Y), X is +(N,Y), !.

%Potencia
potencia(_,0,1) :- !.
potencia(X,1,X) :- !.
potencia(X,N,Y) :- N1 is -(N,1), potencia(X,N1,Z), Y is *(X,Z).

%Suma de los primeros N numeros
suma(0,0) :- !.
suma(N,X) :- N1 is -(N,1), suma(N1,Y), X is +(N,Y).

%Suma de los primeros N numeros pares
suma_pares(0,0) :- !.
suma_pares(N,X) :- N1 is -(N,1), suma_pares(N1,Y), X is +(2*N,Y).

%Suma de los primeros N numeros impares
suma_impares(0,0) :- !.
suma_impares(N,X) :- N1 is -(N,1), suma_impares(N1,Y), X is +(2*N-1,Y).