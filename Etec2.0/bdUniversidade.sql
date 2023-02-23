DROP DATABASE bdUniversidade
CREATE DATABASE bdUniversidade
GO
USE bdUniversidade

CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY IDENTITY(1,1)
	,nomeDisciplina VARCHAR(40) NOT NULL
)
CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR(30) NOT NULL
	,cargaHorariaCurso TIME 
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina)
)
CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY(1,1)
	,nomeTurma CHAR(2) NOT NULL
	,codUncTurma CHAR(3) NOT NULL
	,anoFormTurma VARCHAR(4) NOT NULL
	,numSalaTurma CHAR(4) NOT NULL
	,idCampus INT FOREIGN KEY REFERENCES tbCampus (idCampus)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
)
CREATE TABLE tbCampus(
	idCampus INT PRIMARY KEY IDENTITY(1,1)
	,nomeCampus VARCHAR(30) NOT NULL
	,logradouroCampus VARCHAR(30) NOT NULL
	,numCampus VARCHAR(5) NOT NULL
	,complementoCampus VARCHAR(15)NOT NULL
	,bairroCampus VARCHAR(30) NOT NULL
	,cidadeCampus VARCHAR(30) NOT NULL
	,estadoCampus VARCHAR(30) NOT NULL
	,cepCampus CHAR(8) NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)
CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY(1,1)
	,nomeAluno VARCHAR(40) NOT NULL
	,cursoAluno VARCHAR(30) NOT NULL
	,TurmaAluno CHAR(2) NOT NULL
	,logradouroAluno VARCHAR(30) NOT NULL
	,numAluno VARCHAR(5) NOT NULL
	,complementoAluno VARCHAR(15)NOT NULL
	,bairroAluno VARCHAR(30) NOT NULL
	,cidadeAluno VARCHAR(30) NOT NULL
	,estadoAluno VARCHAR(30) NOT NULL
	,cepAluno CHAR(8) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)
CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)
CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY(1,1)
	,nomeProfessor VARCHAR(40) NOT NULL
	,logradouroProfessor VARCHAR(30) NOT NULL
	,numProfessor VARCHAR(5) NOT NULL
	,complementoProfessor VARCHAR(15)NOT NULL
	,bairroProfessor VARCHAR(30) NOT NULL
	,cidadeProfessor VARCHAR(30) NOT NULL
	,estadoProfessor VARCHAR(30) NOT NULL
	,cepProfessor CHAR(8) NOT NULL
)
CREATE TABLE tbAtribuicao(
	idAtribuicao INT PRIMARY KEY IDENTITY(1,1)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
)
