%Lista de numeros entre N y M

%caso base: si N es igual a M, la lista es [N]
numeros_entre(N,N,[N]) :- !.

%caso recursivo: se agrega N a la lista y se llama a la funcion con N+1 y M
numeros_entre(N,M,[N|Resto]) :- N < M,
                                N1 is N+1,
                                numeros_entre(N1,M,Resto).

%ejemplo de uso
%numeros_entre(1,5,X). -> X = [1,2,3,4,5]
%numeros_entre(5,1,X). -> false
