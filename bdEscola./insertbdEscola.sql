USE BdEscola

INSERT INTO tbCurso(nomeCurso,cargahorariaCurso,valorCurso)
VALUES  ('Inglês',2000,356.00)
       ,('Alemão',3000,478.00)
SELECT*FROM tbCurso

INSERT INTO tbAluno(nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno)
VALUES ('Paulo Santos',2000/10/03,82292122-0,'SP')
          , ('Maria da Gloria',1999/03/10,45233123-0,'SP')
          , ('Perla Nogueira Silva',1998/04/04,23533211-9,'SP')
          , ('Gilson Barbosa Silva',1995/04/04,34211111-1,'PE')
          , ('Mariana Barbosa Santos',2001/10/10,54222122-9,'RJ')
SELECT*FROM tbAluno

INSERT INTO tbTurma(nomeTurma,codCurso,horarioTurma)
VALUES ('1|A',1,'12:00:00')
     , ('1|B',1,'18:00:00')
     , ('1AA',2,'19:00:00')
SELECT*FROM tbTurma

INSERT INTO tbMatricula(dataMatricula,codCurso,codAluno)
VALUES(2015/03/01,1,1)
      ,(2014/04/05,2,1)
	  ,(2012/03/05,3,2)
	  ,(2016/03/03,1,2)
	  ,(2015/07/05,4,2)
	  ,(2015/05/07,4,3)
	  ,(2015/06/06,5,1)
	  ,(2015/05/05,5,3)
SELECT*FROM tbMatricula
