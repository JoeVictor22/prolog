adjacente(X, Y, L) :-
    adj(X, Y, L).

adjacente(X, Y, [Y|T]) :-
    last(T, X).

adj(X, Y, [X,Y|_]).
adj(X, Y, [_|T]) :-
    adj(X, Y, T).


questao_5(X,List):-
    adjacente(A,X,List), write('O anterior é: '), write(A), nl,
    adjacente(X,S,List), write('O sequente é: '), write(S), nl.