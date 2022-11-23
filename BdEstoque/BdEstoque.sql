CREATE DATABASE bdEstoque
USE bdEstoque

CREATE TABLE tbFabricante (
	codFabricante INT NOT NULL PRIMARY KEY IDENTITY (1,1)
	, nomeFabricante VARCHAR (30) NOT NULL UNIQUE
)
CREATE TABLE tbFornecedor (
	codFornecedor INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeFornecedor VARCHAR (40) NOT NULL UNIQUE 
	, contatoFornecedor VARCHAR (20) NOT NULL
)
CREATE TABLE tbCliente (
	codCliente INT NOT NULL PRIMARY KEY IDENTITY (1,1)
	, nomeCliente VARCHAR (40) NOT NULL UNIQUE 
	, cpfCliente VARCHAR (12) NOT NULL UNIQUE
	, emailCliente VARCHAR (40) NOT NULL UNIQUE
	, sexoCliente VARCHAR (3) NOT NULL
	, dataNascimentoCliente DATETIME NOT NULL
)
CREATE TABLE tbVenda (
	codVenda INT NOT NULL PRIMARY KEY IDENTITY (1,1)
	, dataVenda DATETIME NOT NULL
	, valorTotalVenda SMALLMONEY NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)
CREATE TABLE tbProduto (
	codProduto INT NOT NULL PRIMARY KEY IDENTITY (1,1)
	, descricaoProduto VARCHAR (50) NOT NULL
	, valorProduto SMALLMONEY NOT NULL
	, quantidadeProduto INT NOT NULL
	, codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	, codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)
CREATE TABLE tbItensVenda(
	codItensVenda INT NOT NULL PRIMARY KEY IDENTITY (1,1)
	, quantidadeItensVenda INT NOT NULL
	, subTotalItensVenda SMALLMONEY NOT NULL
	, codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	, codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
)
