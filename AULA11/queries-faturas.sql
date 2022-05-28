-- QUERIES FATURAS

/*1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem
ascendente.*/

SELECT * FROM faturas ORDER BY dataFatura ASC;

/*2) Agora é necessário uma lista de faturas com o país de envio "EUA" e
que a FormaeEnvio seja diferente de 3.*/

SELECT * FROM faturas WHERE paisEnvio = 'USA' AND FormaEnvio <> 3;

/*3) O cliente 'GOURL' fez um pedido? Sim.*/

SELECT * FROM faturas WHERE ClienteId = 'GOURL';


/*4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.*/

SELECT * FROM faturas WHERE EmpregadoID IN (2,3,5,8,9) GROUP BY EmpregadoId;

