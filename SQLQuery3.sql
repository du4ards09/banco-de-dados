USE bdEstoque2

INSERT INTO tbFabricante(nomeFabricante)
VALUES
		, ('1,Unilever')
		, ('2,P&G')
		, ('3,Bunge')

SELECT * FROM tbFabricante
INSERT INTO tbProduto (descricaoProduto ,valorProduto,quantidadeProduto)
VALUES 
	, ('1, Amaciante Downy  ,5,76 ,1500, 2, 1')
	, ('2 ,Amaciante Comfort ,5,45 ,2, 300,1, 1')
	, ('3, Sabão em pó OMO, 5,99, 1280, 1, 2')
	, ('4 ,Margarina Qually ,4,76 ,2500 , 3, 1')
	, ('5, Salsicha Hot Dog Sadia, 6,78 ,2900,3,2')
	, ('6 ,Mortadela Perdigão ,2,50 ,1200,3,3')
	, ('7 ,Hamburguer Sadia ,9,89 ,1600,3,1')
	, ('8 ,Fralda Pampers ,36,00 ,340 ,2,3')
	, ('9 , Xampu Seda, 5,89 ,800,1,1')
	, ('10 , Condicionador Seda , 6,50,700,1,3')

SELECT * FROM tbProduto
INSERT INTO tbFornecedor(nomeFornecedor,contatoFornecedor)
VALUES 
	, ('1,Atacadão,Carlos Santos')
	, ('2,Assai,Maria Stella')
	, ('3,Roldão,Paulo César')
SELECT * FROM tbFornecedor
INSERT INTO tbVenda (dataVenda,valortotalVenda)
VALUES 
	, ('1,01/02/2014,4500.00,1')
	, ('2,03/02/2014,3400.00,1')
	, ('3,10/02/2014,2100.00,2')
	, ('4,15/02/2014,2700.00,3')
	, ('6,09/04/2014,1200.00,4')
	, ('7,07/05/2014,3500.00,5')
	, ('8,07/05/2014,3400.00,1')
	, ('9,05/05/2014,4000.00,2')
SELECT * FROM tbVenda
INSERT INTO tbItensVenda(quantidadeItensVenda,subtotalItensVenda)
VALUES
	, ('1,1,1,200,1500.00')
	, ('2,1,2,300,3000.00')
	, ('3,2,4,120,1400.00')
	, ('4,2,2,200,1000.00')
	, ('5,2,3,130,1000.00')
	, ('6,3,5,200,2100.00')
	, ('9,5,5,200,560.00')
	, ('10,6,7,200,600.00')
	, ('11,6,6,300,600.00')
	, ('12,8,1,300,2500.00')
	, ('13,8,2,200,1000.00')
	, ('14,9,6,250,1700.00')
	, ('15,9,5,200,1700.00')
	, ('16,10,4,1000,4000.00')
	SELECT * FROM tbItensVenda
	INSERT INTO tbCliente(nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascimentoCliente)
	VALUES
		,('1,Armando José Santana,12345678900,armandojsantana@outlook.com,m,1961-02-21 00:00:00')
		,('2,Sheila Carvalho Leal,45678909823,scarvalho@ig.com.br,f,1978-09-13 00:00:00')
		,('3,Carlos Henrique Souza,76598278299,chenrique@ig.com.br,m,1981-09-08 00:00:00')
		,('4,Maria Aparecida Souza,87365309899,mapdasouza@outlook.com,f,1962-07-07 00:00:00')
		,('5,Adriana Nogueira Silva,763554309388,drica1977@ig.com.br,f,1977-04-09 00:00:00')
		,('6,Paulo Henrique Silva,37390123111,phsilva80@hotmail.com,m,1987-02-02 00:00:00')
	SELECT *FROM tbCliente