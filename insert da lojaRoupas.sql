USE bdLojaRoupas2

INSERT INTO tbCliente(nomeCliente,idadeCliente)
VALUES ('Maria Isabelly Brasil Matias',23)
	('Maria Eduarda Araujo de Lima', 30)
	('Marcus Vinicius dos Santos',33)
	('Maryana Fortes da Silva Souza',23)
	('Felipe Tavares da Costa',34)
SELECT*FROM tbCliente

INSERT INTO tbVenda(dataVenda,totalCliente,codCliente,codVendedor)
VALUES (23/04/2021,319.00,1,2)
	(23/04/2021,70.00,2,1)
	(25/05/2021,378.00,3,2)
	(25/05/2021,159.00,4,1)
	(06/09/2021,104.47,5,2)
SELECT * FROM tbVenda

INSERT INTO tbVendedor(nomeVendedor)
VALUES ('Junior Bertacelli')
		('Vanessa Costa')
SELECT*FROM tbVendedor

INSERT INTO tbProduto(nomeProduto,preçoProduto,dataEntradaProduto,estoqueProduto,codFuncionario,codFabricante)
VALUES ('kimono feminino paisley em linho',199.00,12/03/2021,300,1,1)
	('cardigan xadrez em tricô branco',159.00,12/03/2021,400,1,1)
	('vestido midi feminino com bolsos em viscolinho',259.00,11/03/2021,500,1,1)
	('Bermuda Moletom Masculino Adulto',38.00,10/02/2021,200,2,2)
	('Camiseta Masculina',35.00,10/02/2021,200,2,2)
	('Blusa Moletom Inverno',119.00,10/02/2021,200,2,2)
	('Blusa Manga Curta Infantil Feminina Amarelo',13.93,20/08/2021,300,1,3)
	('Blusa Manga Longa Infantil Feminina Rosa',11.37,20/08/2021,300,2,3)
	('Conjunto Blusão e Calça Menino Cinza',66.47,20/08/2021,1,3)
SELECT*FROM tbProduto

INSERT INTO tbFuncionario(nomeFuncionario,dataAdmissao,salarioFuncionario)
VALUES ('Jubiléia das Cruzes',20/09/2012,1200.00)
	('Jair Bozo da Silva',23/10/2019,1200.00)
SELECT*FROM tbFuncionario

INSERT INTO tbFabricante(nomeFabricante)
VALUES ('Malwee')
	('Cia da Malha')
	('Marisol')
SELECT*FROM tbFabricante

INSERT INTO tbItensVenda(quantidadeItens,subtotalItens,codVenda,codProduto)
VALUES 
SELECT*FROM tbItensVenda