USE bdEstoque

INSERT INTO tbFabricante(nomeFabricante)
VALUES	('Unilever')
		, ('P&G')
		, ('Bunge')
SELECT * FROM tbFabricante

INSERT INTO tbFornecedor(nomeFornecedor,contatoFornecedor)
VALUES 
	('Atacadão','Carlos Santos')
	, ('Assai','Maria Stella')
	, ('Roldão','Paulo César')
SELECT * FROM tbFornecedor

INSERT INTO tbProduto(descricaoProduto,valorProduto,quantidadeProduto,codFabricante,codFornecedor)
VALUES 
	('Amaciante Downy', 5.76 ,1500,2,1)
	, ('Amaciante Comfort', 5.45, 2300,1,1)
	, ('Sabão em pó OMO', 5.99, 1280,1,2)
	, ('Margarina Qually',4.76 ,2500,3,1)
	, ('Salsicha Hot Dog Sadia', 6.78 ,2900,3,2)
	, ('Mortadela Perdigão' ,2.50 ,1200,3,3)
	, ('Hamburguer Sadia',9.89 ,1600,3,1)
	, ('Fralda Pampers' ,36.00 ,340,2,3)
	, ('Xampu Seda', 5.89 ,800,1,2)
	, ('Condicionador Seda', 6.50,700,1,3)
SELECT * FROM tbProduto

INSERT INTO tbCliente(nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascimentoCliente)
VALUES('Armando José Santana','12345678900','armandojsantana@outlook.com','m','21/02/1961')
		,('Sheila Carvalho Leal','45678909823','scarvalho@ig.com.br','f','13/09/1978')
		,('Carlos Henrique Souza','76598278299','chenrique@ig.com.br','m','08/09/1981')
		,('Maria Aparecida Souza','87365309899','mapdasouza@outlook.com','f','07/07/1962')
		,('Adriana Nogueira Silva','763554309388','drica1977@ig.com.br','f','09/04/1977')
		,('Paulo Henrique Silva','37390123111','phsilva80@hotmail.com','m','02/02/1987')
SELECT *FROM tbCliente


INSERT INTO tbVenda(dataVenda,valorTotalVenda,codCliente)
VALUES 
	('01/02/2014', 4500.00, 1)
	, ('03/02/2014', 3400.00,1)
	, ('10/02/2014', 2100.00,2)
	, ('15/02/2014', 2700.00,3)
	, ('17/03/2014', 560.00, 3)
	, ('06/09/2014', 1200.00,4)
	, ('07/05/2014', 3500.00,5)
	, ('10/10/2014', 1000.00, 2)
	, ('07/05/2014', 3400.00,1)
	, ('05/05/2014', 4000.00,2)
SELECT * FROM tbVenda
	
INSERT INTO tbItensVenda(codVenda,codProduto,quantidadeItensVenda,subTotalItensVenda)
VALUES
	 (1,1,200,1500)
	, (1,2,300,3000)
	, (2,4,120,1400)
	, (2,2,200,1000)
	, (2,3,130,1000)
	, (3,5,200,2100)
	, (5,5,200,560)
	, (6,7,200,600)
	, (6,6,300,600)
	, (8,1,300,2500)
	, (8,2,200,1000)
	, (9,6,250,1700)
	, (9,5,200,1700)
	, (10,4,1000,4000)
	SELECT * FROM tbItensVenda

