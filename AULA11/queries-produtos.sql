-- 1) Queremos ter uma lista de todas as categorias;
SELECT * FROM categorias;

-- 2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome e descrição da lista de categorias.
SELECT categoriaNome, Descricao FROM categorias;

-- 3) Obtenha uma lista dos produtos.
SELECT * FROM produtos;

-- 4) Existem produtos descontinuados? (Descontinuado = 1). Não.
SELECT * FROM produtos WHERE Descontinuado = 1;

-- 5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.
SELECT * FROM produtos WHERE ProvedorId = 8;
-- 6) Queremos saber todos os produtos cujo preço unitário se encontra entre 10 e 22.

SELECT * FROM produtos WHERE PrecoUnitario BETWEEN 10 AND 22;
-- 7) Fica definido que um produto deve ser solicitado ao fornecedor se suas unidades em estoque forem inferiores ao nível de reabastecimento. Existem produtos a solicitar? Sim.

SELECT * FROM produtos WHERE UnidadesEstoque < NivelReabastecimento;

-- 8) Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.

SELECT * FROM produtos WHERE UnidadesEstoque < NivelReabastecimento AND UnidadesPedidas = 0;
