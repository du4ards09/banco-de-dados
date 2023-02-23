CREATE DATABASE bdOrgNG
DROP DATABASE bdOrgNG
USE bdOrgNG

CREATE TABLE tbStatus(
	idStatus INT PRIMARY KEY IDENTITY(1,1)
	,descStatus VARCHAR(30) NOT NULL
)





CREATE TABLE tbSexo(
	idSexo INT PRIMARY KEY IDENTITY(1,1)
	,descSexo VARCHAR(30) NOT NULL
)

CREATE TABLE tbCrianca(
	idCrianca INT PRIMARY KEY IDENTITY(1,1)
	,nomeCrianca VARCHAR(100) NOT NULL
	,dtNascCrianca SMALLDATETIME NOT NULL
	,cpfCrianca CHAR(11)
	,idStatus INT FOREIGN KEY REFERENCES tbStatus(idStatus)
	,idSexo INT FOREIGN KEY REFERENCES tbSexo(idSexo)
)

CREATE TABLE tbProntuario(
	idProntuario INT PRIMARY KEY IDENTITY(1,1)
	,dataAbertura SMALLDATETIME NOT NULL
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca)
)