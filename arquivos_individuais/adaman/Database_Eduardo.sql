create database PI_eduardo;

Create table empresas(
id    int auto_increment,
nome   varchar(50),
representante  varchar(50),
email    varchar (100),
umidade  int,
temperatura int,
primary key chave(id));

Insert into empresas (nome, representante, email, umidade, temperatura)
values ('Sptech', 'Brandão','Brandao@sptech.school', 50, 19);

select * from empresas;