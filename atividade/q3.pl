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
    professor(X,Y), aluno(Z,Y), write(Z), write(' é aluno de '), write(X), nl.

pessoas_da_universidade(X):-
    frequenta(Y,X), write(Y), write(' estuda na universidade '), write(X), nl;
    funcionario(Y,X), write(Y), write(' trabalha na universidade '), write(X), nl.

colegas(X):-
	aluno(X,Y)->(
                aluno(K,Y), dif(X, K), write(X), write(' colega de sala '), write(K), nl;
    			frequenta(X,Z), frequenta(K,Z), dif(X, K), write(X), write(' é colega de faculdade '), write(K), nl
                );
	professor(X,Y)->(
                    professor(X,Y), funcionario(X,K), funcionario(Z,K), dif(X, Z), write('Professor '),write(X), write(' é colega de '), write(Z), nl
                    ).