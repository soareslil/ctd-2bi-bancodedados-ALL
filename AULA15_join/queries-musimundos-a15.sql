SELECT * FROM artistas;
SELECT * FROM albuns;
-- 1 - Selecione o nome dos artistas(tabela artistas)  com o nome de seus albuns (tabela albuns) ordenado por id do artista.
SELECT artistas.id, artistas.nome, albuns.titulo
 FROM artistas
 INNER JOIN albuns
 ON artistas.id = albuns.id_artista;
-- 2 - Selecione o nome do cliente (clientes) e suas faturas (faturas), porém somente as faturas com valor maior de 5, ordenados pelo valor da fatura decrescente.
SELECT * FROM clientes;
SELECT * FROM faturas;
SELECT clientes.nome, faturas.id_cliente, faturas.valor_total FROM clientes
INNER JOIN faturas
ON faturas.id_cliente = clientes.id 
WHERE valor_total > 5 ORDER BY valor_total DESC;
-- 3 Selecione o nome das cancoes (tabela cancoes) e o tipo de arquivo (tabela tipos_de_arquivos) e exiba o nome da canção e o tipo ordenado pelo id da canção.
SELECT * FROM cancoes;
SELECT * FROM tipos_de_arquivo;
SELECT cancoes.id, cancoes.nome AS nomeCancoes, tipos_de_arquivo.nome AS nomeArquivos FROM cancoes
INNER JOIN tipos_de_arquivo
ON tipos_de_arquivo.id = cancoes.id_tipo_de_arquivo;