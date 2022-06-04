CREATE DATABASE IF NOT EXISTS mydbLiliane DEFAULT CHARSET utf8;
USE mydbLiliane;

CREATE TABLE mydbLiliane.Cliente(
idCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_sobrenome VARCHAR(50) NOT NULL
);

CREATE TABLE  mydbLiliane.Servico (
idServico INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nome_servico VARCHAR(30) NOT NULL
);
  
CREATE TABLE mydbLiliane.Cargo(
idCargo  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_cargo VARCHAR(20) NOT NULL,
id_servico INT NOT NULL,
FOREIGN KEY(id_servico) REFERENCES mydbLiliane.Servico (idServico)
);
  
CREATE TABLE mydbLiliane.Funcionario(
idFuncionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_sobrenome VARCHAR(100) NOT NULL,
id_cargo INT,
FOREIGN KEY(id_cargo)REFERENCES mydbLiliane.Cargo (idCargo)
);
  
CREATE TABLE mydbLiliane.Agendamento(
idAgendamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
FOREIGN KEY(id_cliente) REFERENCES mydbliliane.Cliente(idCliente),
data_hora DATETIME NOT NULL,
id_funcionario INT,
FOREIGN KEY(id_funcionario) REFERENCES mydbLiliane.Funcionario(idFuncionario)
);

SELECT * FROM cliente;
INSERT INTO cliente(nome_sobrenome)
VALUES('Liliane Soares'),
('Lucas Araujo'),
('Antonio Raimundo');

SELECT * FROM servico;
INSERT INTO servico(nome_servico)
VALUES('progressiva'),
('design de unhas da mão');

SELECT * FROM cargo;
INSERT INTO cargo(nome_cargo,id_servico)
VALUES('cabeleleiro',1),
('manicure',2);

SELECT * FROM funcionario;
INSERT INTO funcionario(nome_sobrenome,id_cargo)
VALUES('david_soares',1),
('suzana',2);

SELECT * FROM agendamento;
INSERT INTO agendamento(id_cliente,data_hora,id_funcionario)
VALUES(1, '2022-06-04 15:30:00',1);

UPDATE funcionario
SET nome_sobrenome = 'neymar junior'
WHERE idFuncionario = 1;

DELETE FROM funcionario WHERE idFuncionario = 3;
DELETE FROM funcionario WHERE idFuncionario = 4;
DELETE FROM agendamento WHERE id_cliente = 1;
