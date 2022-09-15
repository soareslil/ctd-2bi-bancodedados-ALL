use musimundos;
/*Utilizando a tabela Faturas, extraia a quantidade de faturas emitidas por data. Responda:
Em qual data foram emitidas mais faturas?
Quantas faturas foram emitidas nesta data?*/
SELECT * FROM faturas;
SELECT data_fatura, COUNT(data_fatura) AS 'qntdFatura' FROM faturas GROUP BY data_fatura;
/*Liste o país de cobrança, a quantidade, o total,  a média e o maior valor das faturas emitidas por país, 
na data encontrada no exercício anterior.. Responda:
a)Qual o valor total de faturas do Canadá? */
SELECT pais_cobranca, SUM(valor_total) AS 'valor_total' FROM faturas WHERE pais_cobranca = 'Canada' GROUP BY pais_cobranca;
/*b)Qual a média das faturas do Brasil?*/
SELECT pais_cobranca, COUNT(pais_cobranca) AS 'qtd_Faturas_Brazil' 
FROM faturas  WHERE pais_cobranca = 'Brazil' GROUP BY pais_cobranca;
/*c)Quantas faturas a Argentina possui?*/
SELECT pais_cobranca, COUNT(pais_cobranca) AS 'qtd_Faturas_Argentina' 
FROM faturas  WHERE pais_cobranca = 'Argentina' GROUP BY pais_cobranca;
/*d)Qual o maior valor da fatura dos Estados Unidos?*/
SELECT pais_cobranca, MAX(valor_total) AS faturaMaisCara FROM faturas WHERE pais_cobranca = 'USA';

