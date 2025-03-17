-- cria a database dataclima
create database dataclima;

-- usa a database
use dataclima;

-- cria as tabelas
create table empresa (
	id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(80),
    email varchar(100)
);
 
create table usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    email varchar(100),
    senha varchar(50),
    fkempresa INT,
    constraint fk_empresa foreign key (fkempresa) references empresa(id_empresa)
);

create table dados_sensores (
	id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    fk_dado int,
    umidade float,
    temperatura float,
    hora_coletada datetime,
    constraint fk_dado_sensor foreign key (fk_dado) references empresa(id_empresa)
);

-- insere dados nas tabelas
insert into empresa (nome, email)
	values('Nubank', 'contanto@nubank.com'),
		  ('Microsoft', 'contato@microsoft.com'),
          ('Amazon', 'contato@amazon.com'),
          ('SPTech', 'contato@sptech.school');

insert into usuario (nome, email, senha, fkempresa)
	values('David Vélez', 'david@gmail.com', 'senha', 1),
		  ('Bill Gates', 'bill.gates@gmail.com', 'senha123', 2),
          ('Jeff Bezos', 'jeff@gmail.com', 'senha321', 3),
          ('Vera Goulart', 'vera.goulart@sptech.school', 'password', 4);

insert into dados_sensores (fk_dado, umidade, temperatura, hora_coletada)
	values(1, 45.2, 24.3, current_timestamp()),
		  (2, 40.5, 25.0, current_timestamp()),
          (3, 50.4, 31.0, current_timestamp()),
          (4, 52.8, 26.0, current_timestamp());

-- exibe os dados inseridos
select * from empresa;

select * from usuario;

select * from dados_sensores;
