-- Comentario 
drop table professor_materia;
drop table professor_turma;
drop table aula; 
drop table turma; 
drop table sala; 
drop table materia; 
drop table professor; 


-- Sala de aula  
create table sala(
    id  int primary key, 
	apelido varchar(35), 
	qtd_lugares int
);

-- Materia 
create table materia(
    id int primary key, 
	descricao varchar(35)
);

-- Professor
create table professor(
    id int primary key, 
	cpf char(11), 
	nome varchar(35)
);

-- Turma 
create table turma(
    id int primary key, 
	serie int, 
	id_sala int references sala(id) 
);

-- Aula 
create table aula(
    id int primary key, 
	horario time, 
	id_professor int references professor(id), 
	id_materia int references materia(id), 
	id_turma int references turma(id)
);

-- Professor_Turma
create table professor_turma(
    id_professor int references professor(id), 
	id_turma int references turma(id)
); 


-- Professor_Materia
create table professor_materia(
    id_professor int references professor(id), 
	id_materia int references materia(id)
);

