aluno(joao, paradigmas).
aluno(maria, paradigmas).
aluno(joel,lab2). aluno(joel, estruturas).
frequenta(joao, ifce).
frequenta(joel, ufc).
professor(carlos, paradigmas).
professor(ana_paula, estruturas).
professor(pedro, lab2).
funcionario(pedro, ufc).
funcionario(ana_paula, ifce).
funcionario(carlos, ifce).



alguem(PESSOA) :- professor(PESSOA, DISCIPLINA).
alguem2(PESSOA) :- professor(PESSOA, DISCIPLINA).


alunos_disciplina(DISCIPLINA) :- findall(aluno(PESSOA, DISCIPLINA), write(PESSOA)).
alunos(PESSOA) :- professor(PESSOA, DISCIPLINA), alunos_disciplina(DISCIPLINA).
pessoas(UNIVERSIDADE) :- frequenta(PESSOA, UNIVERSIDADE); funcionario(PESSOA, UNIVERSIDADE), pessoas(UNIVERSIDADE).



frequentadores(UNIVERSIDADE) :- frequenta(PESSOA, UNIVERSIDADE), frequentadores(UNIVERSIDADE).
funcionarios(UNIVERSIDADE) :- funcionario(PESSOA, UNIVERSIDADE), funcionarios(UNIVERSIDADE).
colegas_turma(DISCIPLINA, UNIVERSIDADE) :- frequenta(PESSOA, UNIVERSIDADE), aluno(PESSOA, DISCIPLINA).
colegas(PESSOA) :- frequenta(PESSOA, UNIVERSIDADE), frequentadores(UNIVERSIDADE); aluno(PESSOA, DISCIPLINA), colegas_turma(DISCIPLINA); funcionario(PESSOA, UNIVERSIDADE), funcionarios(UNIVERSIDADE).