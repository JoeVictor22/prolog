adjacente(X, Y, L) :- adj(X, Y, L).
adjacente(X, Y, [Y|T]) :- last(T, X).
adj(X, Y, [X,Y|_]).
adj(X, Y, [_|T]) :- adj(X, Y, T).
vizinhos(X,Lista):- adjacente(A,X,Lista), write('Anterior: '), write(A), nl, adjacente(X,S,Lista), write('Próximo: '), write(S), nl.