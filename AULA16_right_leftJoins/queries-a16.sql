USE emarket;
-- Liste todas as categorias junto com informações sobre seus produtos. Incluir todas as categorias, mesmo que não tenham produtos
SELECT CategoriaNome, Descricao FROM categorias
RIGHT JOIN produtos
ON categorias.CategoriaID = produtos.CategoriaID; 

-- Liste as informações de contato de clientes que nunca compraram no emarket.
SELECT * FROM faturas;
SELECT * FROM clientes;
SELECT CodigoPostalEnvio, Contato FROM faturas
LEFT JOIN clientes
ON clientes.ClienteID = faturas.ClienteID;

-- Faça uma lista de produtos. Para cada um, indique seu nome, categoria e as informações de contato de seu fornecedor. 
-- Lembre-se que podem existir produtos para os quais o fornecedor não foi indicado.
SELECT * FROM produtos;
SELECT * FROM provedores;
SELECT  ProdutoNome, CategoriaID, Contato FROM provedores
LEFT JOIN produtos
ON produtos.ProvedorID = provedores.ProvedorID;

-- Para cada categoria, liste o preço unitário médio de seus produtos.
SELECT * FROM categorias;
SELECT * FROM produtos;
SELECT CategoriaNome, AVG(PrecoUnitario) FROM produtos
LEFT JOIN categorias
ON categorias.CategoriaID = produtos.CategoriaID
GROUP BY categorias.CategoriaNome;

-- Para cada cliente, indique a última nota fiscal de compra. Inclua clientes que nunca compraram no e-market.
SELECT * FROM clientes; ClienteID, Contato
SELECT * FROM faturas; ClienteID, DataFatura
SELECT Contato, DataFatura FROM clientes
RIGHT JOIN faturas
ON clientes.ClienteID = faturas.ClienteID
GROUP BY clientes.Contato
ORDER BY faturas.DataFatura DESC;

/*Todas as faturas têm uma empresa de correio associada (envio). 
Gere uma lista com todas as empresas de correio e o número de faturas correspondentes. Execute a consulta usando RIGHT JOIN.
*/