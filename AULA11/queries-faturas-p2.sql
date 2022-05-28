-- QUERIES PRODUTOS PARTE 2

/*1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.*/

SELECT * FROM produtos ORDER BY PrecoUnitario DESC;
/*2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".*/

SELECT * FROM produtos ORDER BY PrecoUnitario ASC LIMIT 5;
/*3) Obtenha um top 10 dos produtos com mais unidades em estoque. FICAMOS COM DUVIDA NESSE*/

SELECT * FROM produtos ORDER BY UnidadesEstoque DESC LIMIT 10;




