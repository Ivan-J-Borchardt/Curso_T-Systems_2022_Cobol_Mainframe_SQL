create table especialidade(
  cod int primary key, 
  especialidade varchar(35) 
);

create table rua(
  cod int primary key, 
  rua varchar(35)	
);

create table cidade(
  cod int PRIMARY key, 
  cidade varchar(35)
);

create table estado(
  cod int PRIMARY key, 
  estado varchar(35), 
  uf char(2)
);

create table endereco(
  cod int PRIMARY key, 
  cep char(9) not NULL, 
  numero int, 
  cod_rua int references rua(cod), 
  cod_cidade int references cidade(cod), 
  cod_estado int references estado(cod)
);

create table mae(
  cod int PRIMARY key, 
  nome VARCHAR(35) not null, 
  cpf char(14), 
  data_nasc date,
  cod_end int not null references endereco(cod)
);

create table mae_telefone(
  cod int PRIMARY key, 
  ddi char(2), 
  ddd char(3), 
  numero varchar(10), 
  cod_mae int references mae(cod)
); 

create table medico(
  cod int PRIMARY Key, 
  crm varchar(15), 
  nome varchar(35), 
  cod_end int references endereco(cod), 
  cod_esp int references especialidade(cod)
); 

create table medico_tel(
  cod int PRIMARY KEY,
  ddi char(2), 
  ddd char(3), 
  numero varchar(10), 
  cod_med int not null references medico(cod)
);

create table parto(
  cod int, 
  data_parto DATE, 
  hora_parto TIME, 
  tipo char(1) check(tipo in ('n', 'c')),
  cod_mae int,
  primary key (cod), 
  foreign key (cod_mae) references mae(cod)
);


create table bebe(
  cod int PRIMARY key, 
  nome varchar(35), 
  sexo char(1) check(sexo in('m', 'f')),
  altura int, 
  peso REAL, 
 -- data_nasc date, 
  cod_mae int references mae(cod), 
  cod_parto int References parto(cod)
);

create table medico_mae(
  cod_medico int references medico(cod), 
  cod_mae int References mae(cod)
);

Create table medico_bebe(
  cod_medico int References medico(cod), 
  cod_bebe int References bebe(cod)
);

create table medico_parto(
   cod_medico int REFERENCES medico(cod),
   cod_parto int references parto(cod)
);

--alter table mae drop column cpf; 
--alter table mae add column cpf char(14) unique not null;