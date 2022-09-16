DROP DATABASE bdEstoque

CREATE DATABASE bdEstoque

USE bdEstoque


CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR(50)
)
CREATE TABLE tbFornecedor(
	idFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR(30) NOT NULL
	,contatoFornecedor VARCHAR(20) NOT NULL
)

CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY(1,1)
	,descricaoProduto VARCHAR (40) NOT NULL
	,valorProduto SMALLMONEY NOT NULL
	,quantidadeProduto INT NOT NULL
	,idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
	, idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(idFornecedor)
)
CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR(50)
	,cpfCliente VARCHAR(12) NOT NULL
	,emailCliente VARCHAR(40) NOT NULL
	,sexoCliente CHAR(1) NOT NULL
	,dataNascCliente SMALLDATETIME NOT NULL
)
CREATE TABLE tbVenda(
	idVenda INT PRIMARY KEY IDENTITY(1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,valorTotalVenda SMALLMONEY NOT NULL
	,idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
)
CREATE TABLE tbItensVenda(
	idItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,quantidadeItensVenda INT NOT NULL
	,subtotalItensVendas SMALLMONEY NOT NULL
	,idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
)