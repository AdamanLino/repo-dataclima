create database sptech_dataclima;

use sptech_dataclima;

create table tipo_sensor(
id int primary key auto_increment,
descricao varchar(50) not null,
preco decimal(10,2) default 0
);

create table dados_sensor(
dado_temperatura decimal(4,2),
dado_umidade int,
data_sensor datetime,
pk_tipo_sensor int,
foreign key (pk_tipo_sensor) references tipo_sensor(id)
);

create table cliente(
id int primary key auto_increment,
nome varchar(50),
localidade varchar(20),
data_cadastro date,
ultimo_login date);

create table projeto(
id int primary key auto_increment,
pk_cliente int,
data_projeto datetime,
quantidade_sensor int,
pk_tipo_sensor int,
foreign key (pk_tipo_sensor) references tipo_sensor(id),
foreign key (pk_cliente) references cliente(id)
);