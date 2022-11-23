USE bdEstoque

----PAR

--1
SELECT SUM(quantidadeProduto) AS 'Soma quantidade produto da P&G' FROM tbProduto
	WHERE codFabricante = 2

--2
SELECT AVG(valorProduto) AS 'Média dos valores dos produtos da P&G' FROM tbProduto
	WHERE codFabricante = 2

--3
SELECT SUM(valorProduto) AS 'Soma dos valores dos produtos da Unilever' FROM tbProduto
	WHERE codFabricante = 1

--4
SELECT AVG(valorProduto) AS 'Média dos valores dos produtos da Bunge' FROM tbProduto
	WHERE codFabricante = 3

--5
SELECT SUM(quantidadeProduto) AS 'Soma quantidade produto da Bunge' FROM tbProduto
	WHERE codFabricante = 3

--6
SELECT AVG(quantidadeProduto) AS 'Média quantidade de produtos da P&G' FROM tbProduto
	WHERE codFabricante = 2

--7
SELECT AVG(valorProduto) AS 'Valor médio dos produtos cuja quantidade é menor que 200' FROM tbProduto
	WHERE quantidadeProduto < 200

--8
SELECT AVG(quantidadeProduto) AS 'Quantidade média dos produtos da Unilever' FROM tbProduto
	WHERE codFabricante = 1

--9
SELECT MIN(valorProduto) AS 'Valor do produto mais barato' FROM tbProduto

--10
SELECT COUNT(codProduto) AS 'Quantidade de itens da Unilever' FROM tbProduto
	WHERE codFabricante = 1
