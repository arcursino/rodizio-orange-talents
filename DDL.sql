create schema rodizio;

use rodizio;

create user 'user'@'localhost' identified by 'pass123';

grant select, insert, delete, update on rodizio.* to user@'localhost';

create table usr_usuario (
  usr_id bigint unsigned not null auto_increment,
  usr_nome varchar(20) not null,
  usr_email varchar(50) not null,
  usr_cpf varchar(11) not null,
  usr_nasc date not null,
  primary key (usr_id),
  unique key uni_usuario_nome (usr_nome),
  unique key uni_usuario_cpf (usr_cpf)
);

insert into usr_usuario(usr_nome, usr_email, usr_cpf, usr_nasc) 
  values ('Ariana', 'ariana@teste.com', '11111111111', '1990-12-18')