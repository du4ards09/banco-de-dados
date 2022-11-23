CREATE DATABASE BdEscola
USE BdEscola

CREATE TABLE tbCurso(
   codCurso INT PRIMARY KEY IDENTITY (1,1)
   , nomeCurso VARCHAR(6) NOT NULL
   , cargahorariaCurso VARCHAR (4) NOT NULL
   , valorCurso VARCHAR(4) NOT NULL 
)

CREATE TABLE tbAluno(
   codAluno INT PRIMARY KEY IDENTITY (1,1)
   , nomeAluno VARCHAR(30) NOT NULL
   , dataNascimentoAluno SMALLDATETIME
   , rgAluno VARCHAR (9) NOT NULL
   , naturalidadeAluno VARCHAR(2)
)

CREATE TABLE tbTurma(
   codTurma INT PRIMARY KEY IDENTITY (1,1)
   , nomeTurma VARCHAR(3) NOT NULL
   , codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
   , horarioTurma TIME 
) 

CREATE TABLE tbMatricula(
  codMatricula INT PRIMARY KEY IDENTITY (1,1)
  , dataMatricula SMALLDATETIME
  , codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
  , codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
)
