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

create table vei_veiculo (
    vei_id bigint unsigned not null auto_increment,
    vei_marca varchar(20) not null,
    vei_modelo varchar(20) not null,
    vei_ano date not null,
    vei_valor float,
    primary key (vei_id),    
);

create table usr_vei (
    usr_id bigint unsigned not null,
    vei_id bigint unsigned not null,
    primary key (usr_id, vei_id),
    foreign key usr_veiculo_fk (usr_id) references usr_usuario on delete restrict on update cascade,
    foreign key vei_usuario_fk (vei_id) references vei_veiculo on delete restrict on update cascade,    
);

insert into usr_usuario(usr_nome, usr_email, usr_cpf, usr_nasc) 
  values ('Ariana', 'ariana@teste.com', '11111111111', '1990-12-18');

insert into vei_veiculo(vei_marca, vei_modelo, vei_ano)
    values('VW - VolksWagen', 'AMAROK High.CD 2.0 16V TDI 4x4 Dies. Aut', 2014);

insert into usr_vei values(1,1);