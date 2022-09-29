CREATE DATABASE bdEscolaIdiomas2

 USE bdEscolaIdiomas2


CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR(10) NOT NULL
)

CREATE TABLE tbPeriodo(
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	, descPeriodo VARCHAR(9) NOT NULL
)

CREATE TABLE tbDiaSemana(
	codDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	, diaSemana VARCHAR(13) NOT NULL
)

CREATE TABLE tbNivel(
	codNivel INT PRIMARY KEY IDENTITY (1,1)
	, descNivel VARCHAR(14) NOT NULL
)

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR(35) NOT NULL
	, rgAluno VARCHAR(12) NOT NULL
	, enderecoAluno VARCHAR(30) NOT NULL
	, numAluno VARCHAR(4) NOT NULL
	, compAluno VARCHAR(7) NOT NULL
	, bairroAluno VARCHAR(20) NOT NULL
	, cepAluno VARCHAR (8) NOT NULL
	, cidadeAluno VARCHAR(20) NOT NULL
)

CREATE TABLE tbTelefone(
	codTelefone INT PRIMARY KEY IDENTITY(1,1)
	, foneTelefone VARCHAR(20)
)

--DROP DATABASE tbTurma--
CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	, horarioTurma TIME NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	, codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
	, codNivel INT FOREIGN KEY REFERENCES tbNivel(codNivel)
	, codDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana(codDiaSemana)
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)