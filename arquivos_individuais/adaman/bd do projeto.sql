create database dataclima;

use dataclima;

create table dadosClientes (
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(80),
    empresa varchar(80),
    email varchar(100),
    cpf INT
);

create table dadosSensores (
	idSensor INT AUTO_INCREMENT PRIMARY KEY,
    temperatura FLOAT,
    umidade FLOAT,
    mediaTemp FLOAT,
    mediaUmid FLOAT,
    fkclientes INT,
    FOREIGN KEY (fkclientes) REFERENCES dadosClientes(idCliente)
);

insert into dadosClientes (nome, empresa, email, cpf)
	values ('Alex', 'Nubank', 'alex@nubank.com', 12345678911);

insert into dadosSensores(temperatura, umidade, mediaTemp, mediaUmid)
	values(23.0, 58.2, 32.5, 81.2);
    
    
select * from dadosClientes;

select * from dadosSensores;