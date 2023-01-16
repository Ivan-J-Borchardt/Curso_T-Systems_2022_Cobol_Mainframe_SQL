-- Especialidade Médica
insert into especialidade values(1, 'Pediatra');
insert into especialidade values(2, 'Obstetra');
insert into especialidade values(3, 'Clinico Geral');
insert into especialidade values(4, 'Cardiologista');
insert into especialidade values(5, 'Nutricionista');

-- Rua 
insert into rua values(1, 'Abry'); 
insert into rua values(2, 'Paulo Zimmermann');
insert into rua values(3, 'Washinton Luís');
insert into rua values(4, '7 de Setembro');
insert into rua values(5, 'Beirra Rio'); 

-- cidade 
insert into cidade values(1, 'Pomerode'); 
insert into cidade values(2, 'São Paulo'); 
insert into cidade values(3, 'Blumenau'); 
insert into cidade values(4, 'Curitiba'); 
insert into cidade values(5, 'Porto Alegre');

-- estado 
insert into estado values(1, 'Rio Grande do Sul');
insert into estado values(2, 'Santa Catarina');
insert into estado values(3, 'Paraná');
insert into estado values(4, 'São Paulo');
insert into estado values(5, 'Minas Gerais');

-- Endereco 
insert into endereco values(1, '89107-000', 15, 2, 1, 2); 
insert into endereco values(2, '89230-015', 1521, 5, 3, 2);
insert into endereco values(3, '89107-000', 130, 1, 1, 2);
insert into endereco values(4, '89530-123', 562, 3, 2, 4);
insert into endereco values(5, '89107-000', 48, 4, 3, 2);

-- Mãe
insert into mae values(1, 'Joana Martins',  '12/01/1990', 2, '002.001.002-12'); 
insert into mae values(2, 'Marina Costa e Silva', '05/06/1987', 1, '002.001.002-13'); 
insert into mae values(3, 'Silvia Oliveira',  '25/12/2000', 3, '002.001.002-14'); 
insert into mae values(4, 'Adriana Einstein',  '17/02/1995', 4, '002.001.002-15'); 
insert into mae values(5, 'Joana Martins',  '29/10/1999', 2, '002.001.002-16'); 

-- Mae_Telefone 
insert into mae_telefone values(1, '55', '047', '3387-2345', 1); 
insert into mae_telefone values(2, '55', '047', '3387-4568', 1); 
insert into mae_telefone values(3, '55', '011', '99925-2225', 4); 
insert into mae_telefone values(4, '55', '047', '3020-1254', 2); 
insert into mae_telefone values(5, '55', '047', '3387-2345', 5); 

-- Exemplo Delete 
delete from mae_telefone where cod = 3; 

-- Exemplo Update 
update mae_telefone set numero = '3387-0000' where cod = 5; 


