USE bdLojaRoupas2

SELECT*FROM tbFabricante
SELECT*FROM tbProduto
SELECT*FROM tbItensVenda

UPDATE tbFabricante
SET nomeFabricante ="Turma da Malha"
WHERE codFabricante =2

UPDATE tbProduto
SET valorProduto = valorProduto*0.8
WHERE codProduto = 2

UPDATE tbProduto
SET estoqueProduto = 10
WHERE codProduto = 3

DELETE FROM tbVenda
WHERE codVenda = 2

DELETE FROM tbItensVenda
SET 
WHERE 
--Não removemos o Fabricante ainda !!