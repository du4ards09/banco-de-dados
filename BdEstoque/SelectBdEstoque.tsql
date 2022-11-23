USE bdEstoque

--SELECT 11
SELECT SUM(valorTotalVenda) AS 'Soma das vendas de fevereiro e Março:' FROM tbVenda
WHERE MONTH(dataVenda) BETWEEN 2 AND 3 AND YEAR(dataVenda) = 2014

--SELECT 12
SELECT SUM(quantidadeProduto) AS 'Soma da quantd. de amaciantes:' FROM tbProduto
WHERE descricaoProduto LIKE '%Amaciante%'

--SELECT 13
SELECT MAX(valorProduto) AS 'Produto mais caro:' FROM tbProduto

--SELECT 14
SELECT AVG(valorProduto) AS 'Média de preços dos produtos da Unilever:' FROM tbProduto
WHERE codFabricante = 1

--SELECT 15
SELECT AVG(valorProduto) AS 'Média de preços do amaciante:' FROM tbProduto
WHERE descricaoProduto LIKE '%Amaciante%'

--SELECT 16
SELECT AVG(quantidadeItensVenda) AS 'Média de itens por venda:' FROM tbItensVenda
GROUP BY codVenda

--SELECT 17
SELECT COUNT(codProduto) AS 'Itens no estoque que Não são da Unilever:' FROM tbProduto
WHERE codFabricante != 1

--SELECT 18
SELECT SUM(quantidadeProduto) AS 'Soma das quantidades de produtos que ultrapassam 800 unidades:' FROM tbProduto
WHERE quantidadeProduto > 800

--SELECT 19
SELECT AVG(valorProduto) AS 'Média dos preços da Unilever com mais de 1000 unidades:' FROM tbProduto
WHERE codFabricante = 1 AND quantidadeProduto > 1000

--SELECT 20
SELECT AVG(valorTotalVenda) AS 'Média das vendas de 2014:' FROM tbVenda
WHERE YEAR(dataVenda) = 2014
