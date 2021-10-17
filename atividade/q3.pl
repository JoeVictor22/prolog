aluno(joao, paradigmas).
aluno(maria, paradigmas).
aluno(joel, lab2).
aluno(joel, estruturas).
frequenta(joao, ifce).
frequenta(maria, ifce).
frequenta(joel, ufc).
professor(carlos, paradigmas).
professor(ana_paula, estruturas).
professor(pedro, lab2).
funcionario(pedro, ufc).
funcionario(ana_paula, ifce).
funcionario(carlos, ifce).

alunos_do_professor(X):-
    professor(X,Y), aluno(Z,Y), write(Z),nl.

pessoas_da_universidade(X):-
    frequenta(Y,X), write(Y), nl;
    funcionario(Y,X), write(Y), nl.

colegas(X):-
	aluno(X,Y)->(
                aluno(K,Y), dif(X, K), write(X), write(' colega de sala '), write(K), nl;
    			frequenta(X,Z), frequenta(K,Z), dif(X, K), write(X), write(' é colega de faculdade de '), write(K), nl
                );
	professor(X,Y)->(
                    professor(X,Y), funcionario(X,K), funcionario(Z,K), dif(X, Z), write(X), write(' é colega de trabalho de '), write(Z), nl
                    ).
%https://swish.swi-prolog.org/p/q3_prologo_ia.swinb