sumatoria(A,B,X) :- <(A,B), ! fail.

sumatoria(A,B,X) :- =:=(A,B), X is B, write(B).

sumatoria(A,B,X) :- Y is +(A,1), sumatoria(Y,B,Z), X is +(A,Z).
