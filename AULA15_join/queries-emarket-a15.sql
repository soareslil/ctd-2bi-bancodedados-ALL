/*1. Liste os clientes que fizeram compras durante 1996. A lista deve conter as seguintes colunas:
•	Contato 
•	Título
Obs: Apresente os dados da coluna Titulo em maiúsculo.*/
SELECT * FROM clientes;
SELECT * FROM faturas;
SELECT clientes.contato,clientes.titulo, faturas.DataFatura FROM clientes 
INNER JOIN faturas
ON clientes.ClienteID = faturas.ClienteID  
WHERE faturas.DataFatura < "1997-01-01" AND faturas.DataFatura >"1995-12-31";

/*2. Liste as faturas para as quais a remessa foi para uma cidade diferente da cidade do cliente. Considere apenas os clientes do Reino Unido.
A listagem deve incluir:
•	O número da fatura completando com zeros principais 8 itens. Por exemplo, 00001234
•	A data da fatura no formato YYYY-MM-DD. Por exemplo, 1996-12-01
•	Para a cidade do cliente*/
SELECT * FROM clientes;
SELECT * FROM faturas;
SELECT clientes.ClienteID AS idDoClienteEmClientee, clientes.Cidade AS cidadeCliente, faturas.ClienteID AS faturaClienteId, faturas.cidadeEnvio FROM clientes
INNER JOIN faturas
ON faturas.ClienteID = clientes.ClienteID
WHERE faturas.cidadeEnvio <> clientes.cidade; 
