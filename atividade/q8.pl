vai(Movimentos) :- baldes([0-0], Movimentos).
baldes(Movimentos, Movimentos) :- Movimentos = [2-_|_] ; Movimentos = [_-2|_].
baldes([Baldes|Movimentado], Passos) :- movimenta(Baldes, Atualiz), \+ memberchk(Atualiz, Movimentado), baldes([Atualiz,Baldes|Movimentado], Passos).

movimenta(B1-B2, C1-C2) :-
    B1 = 0, C1 =  3, C2 = B2 ; B2 = 0, C2 =  4, C1 = B1 ; 
    B1 > 0, C1 =  0, C2 = B2 ; B2 > 0, C2 =  0, C1 = B1 ; 
    B1 > 0, B2 < 4, T is min(B1, 4 - B2), C1 is B1 - T, C2 is B2 + T ; 
    B2 > 0, B1 < 3, T is min(B2, 3 - B1), C2 is B2 - T, C1 is B1 + T . 
%https://swish.swi-prolog.org/p/q8_prologo_ia.swinb