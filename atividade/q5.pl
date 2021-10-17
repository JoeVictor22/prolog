adjacente(X, Y, L) :- viz(X, Y, L).
adjacente(X, Y, [Y|T]) :- last(T, X).
viz(X, Y, [X,Y|_]).
viz(X, Y, [_|T]) :- viz(X, Y, T).
vizinhos(X,Lista):- adjacente(A,X,Lista), write('Anterior: '), write(A),nl, adjacente(X,S,Lista), write('Próximo: '), write(S), nl.
%https://swish.swi-prolog.org/p/q5_prologo_ia.swinb