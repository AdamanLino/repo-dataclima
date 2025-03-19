create database dataclima;

use dataclima;

create table empresa
(id int not null AUTO_INCREMENT,
nome_empresa varchar(50)not null,
representante varchar(50)not null,
primary key(id)
);

select * from empresa;

create table temperatura
(
id int AUTO_INCREMENT not null,
id_temperatura int not null,
temperatura int not null,
primary key(id),
constraint fk_id_temperatura foreign KEY (id_temperatura) references empresa(id)
);

SELECT * from temperatura;



create table umidade
(
id  int AUTO_INCREMENT not null,
id_umidade int not null,
umidade int not null,
primary key(id),
constraint fk_id_umidade foreign key (id_umidade) references empresa(id)
);

drop table temperatura;

select * from temperatura;
select * from umidade;

drop table temperatura;
drop table umidade;
drop table empresa;

create table usuario
(
id int AUTO_INCREMENT not null,
nome varchar (50) not null,
email varchar(200) generated ALWAYS as(concat(nome, '@gmail.com')),
senha int not null,
id_usuario int not null,
primary key(id),
constraint fk_id_usuario FOREIGN KEY (id_usuario)REFERENCES empresa(id)
);

select * from usuario;

insert into usuario(nome, senha, id_usuario)
values
('geraldo',8287329, 1);

insert into usuario(nome, senha, id_usuario)
values
('ricardo', 92372097, 2);

drop table usuario;

insert into empresa(nome_empresa, representante)
values
(
'dataclima',
'integrantes'
);

insert into empresa(nome_empresa, representante)
values
(
'tuliomotors',
'tulio'
);

insert into temperatura
(temperatura, id_temperatura)
values
(7, 1);

insert into temperatura
(temperatura, id_temperatura)
values
(8, 2);

select * from temperatura;