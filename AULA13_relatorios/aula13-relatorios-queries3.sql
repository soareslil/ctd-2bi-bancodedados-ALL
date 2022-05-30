/**/ 
/*1- Quantos filmes estão registrados? */
SELECT * FROM filmes;
SELECT COUNT(id) AS 'qntd_filmes_registrados' FROM filmes;
/*2- Quantos filmes têm entre 3 e 7 prêmios? */
SELECT COUNT(titulo) AS 'qntd_filmes' FROM filmes WHERE premios >3 AND premios <7;
/*3- Quantos filmes têm entre 3 e 7 prêmios e avaliação superior a 7? */
SELECT COUNT(titulo) AS 'qtd_filmes' FROM filmes WHERE premios >= 3 AND premios <= 7 AND avaliacao >7;
/*4- Crie uma lista da tabela de filmes, mostre um relatório da quantidade de filmes por id. do gênero. */
SELECT genero_id, COUNT(genero_id) AS 'qtd_gen_id' FROM filmes GROUP BY genero_id;
/*5- Na consulta anterior, liste apenas os gêneros que têm como soma de prêmios um número maior que 5. */
SELECT genero_id,premios FROM filmes WHERE premios > 5;



