-- QUERIES CLIENTES

/*1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País.
Classifique a lista por país.*/

SELECT * FROM Clientes ORDER BY pais;

/*2) Queremos atender todos os clientes que possuem o título de “Proprietário".
Esse título estará em inglês (Owner).*/

SELECT * FROM Clientes WHERE titulo = 'Owner';

/*3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe
apenas que começa com "C". Podemos ajudá-lo a obter uma lista com
todos os contatos que começam com a letra C?*/

SELECT * FROM Clientes WHERE Contato LIKE 'C%';