-- QUERIES FATURA Parte 2

/*1) Obtenha uma lista de FaturaId, Produto, Quantidade*/

SELECT FaturaId,ProdutoID,Quantidade FROM detalhefatura;

/*2) Classifique a lista acima por Quantidade decrescente.*/ 

SELECT FaturaId,ProdutoID FROM detalhefatura ORDER BY quantidade DESC;

/*3) Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100.*/

SELECT FaturaId,ProdutoID FROM detalhefatura ORDER BY quantidade BETWEEN 50 AND 100;

/*4) Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna:
Número da fatura (FaturaId), Produto (ProdutoId), Total (Preço Unitário *
Quantidade)*/
SELECT * FROM detalhefatura;

SELECT FaturaId, ProdutoId, PrecoUnitario * Quantidade AS 'total' FROM detalhefatura;
