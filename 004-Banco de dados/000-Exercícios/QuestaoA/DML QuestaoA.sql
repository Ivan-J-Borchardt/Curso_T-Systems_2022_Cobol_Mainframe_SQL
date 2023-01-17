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
insert into mae values(1, 'Joana Martins', '002.001.002-12', '12/01/1990', 2); 
insert into mae values(2, 'Marina Costa e Silva', '002.001.002-13', '05/06/1987', 1); 
insert into mae values(3, 'Silvia Oliveira', '002.001.002-14',  '12/25/2000', 3); 
insert into mae values(4, 'Adriana Einstein', '002.001.002-15',  '02/17/1995', 4); 
insert into mae values(5, 'Joana Martins', '002.001.002-16',  '10/29/1999', 2); 

-- Mae_Telefone 
insert into mae_telefone values(1, '55', '047', '3387-2345', 1); 
insert into mae_telefone values(2, '55', '047', '3387-4568', 1); 
insert into mae_telefone values(3, '55', '011', '99925-2225', 4); 
insert into mae_telefone values(4, '55', '047', '3020-1254', 2); 
insert into mae_telefone values(5, '55', '047', '3387-2345', 5); 

-- Parto 
insert into parto values(1, '12/10/2021', '02:34:00', 'n', 4);
insert into parto values(2, '07/27/2022', '10:07:00', 'c', 5);
insert into parto values(3, '10/17/2018', '02:55:00', 'c', 1);
insert into parto values(4, '03/11/2017', '18:00:00', 'n', 2);
insert into parto values(5, '06/06/2020', '19:23:00', 'n', 4);
insert into parto values(6, '03/04/2022', '01:20:00', 'n', 3);
insert into parto values(7, '11/10/2022', '02:34:00', 'n', 1);
insert into parto values(8, '01/01/2023', '00:00:00', 'c', 2);



-- Bebe 
insert into bebe values(1, 'Maria Cristina', 'f', 55, 3.450, 1, 3);
insert into bebe values(2, 'Joao Pedro', 'm', 54, 3.124, 3, 6);
insert into bebe values(3, 'Amanda', 'f', 52, 2.850, 2, 4);
insert into bebe values(4, 'Jefferson', 'm', 55, 3.500, 5, 2);
insert into bebe values(5, 'Ana Clara', 'f', 52, 3.100, 4, 1);
insert into bebe values(6, 'Joana', 'f', 51, 3.330, 5, 5);
insert into bebe values(7, 'Mariana', 'f', 52, 2.950, 3, 6);
insert into bebe values(8, 'Pedro', 'm', 56, 3.650, 1, 1);
insert into bebe values(9, 'Alberto', 'm', 54, 3.250, 2, 8);	

-- Medico
INSERT INTO medico values(1, '123R3', 'Dr. Augusto', 1, 1);
INSERT INTO medico values(2, '123M54', 'Dra. Carlota', 1, 3);
INSERT INTO medico values(3, '234E22', 'Dr. Justus', 5, 2);
INSERT INTO medico values(4, '987f1', 'Dra. Julia', 4, 5);
INSERT INTO medico values(5, '1534r', 'Dr. Antonio', 3, 4);
INSERT INTO medico values(6, '12w34', 'Dra. Manoela ', 3, 2);
INSERT INTO medico values(7, '34w34', 'Dra. Li ', 3, 1);


-- Medico_Telefone 
insert into medico_tel values(1, '55', '047', '3387-2345', 1); 
insert into medico_tel values(2, '55', '047', '3387-2346', 2); 
insert into medico_tel values(3, '55', '047', '3387-2347', 3); 
insert into medico_tel values(4, '55', '047', '3387-2348', 4); 
insert into medico_tel values(5, '55', '047', '3387-2349', 5); 
insert into medico_tel values(6, '55', '047', '3387-2350', 6); 
insert into medico_tel values(7, '55', '047', '3387-2351', 7); 

-- Medico_Parto
insert into medico_parto values(3,1);
insert into medico_parto values(5,1);
insert into medico_parto values(1,1);
insert into medico_parto values(3,2);
insert into medico_parto values(1,2);
insert into medico_parto values(6,3);
insert into medico_parto values(1,3);
insert into medico_parto values(3,3);
insert into medico_parto values(3,4);
insert into medico_parto values(1,4);
insert into medico_parto values(6,5);
insert into medico_parto values(2,5);
insert into medico_parto values(3,6);
insert into medico_parto values(1,6);
insert into medico_parto values(6,7);
insert into medico_parto values(1,7);
insert into medico_parto values(6,8);
insert into medico_parto values(1,8);

-- Medico_Bebe
INsert into medico_bebe values(1,1);
INsert into medico_bebe values(1,2);
INsert into medico_bebe values(7,3);
INsert into medico_bebe values(2,3);
INsert into medico_bebe values(1,4);
INsert into medico_bebe values(7,5);
INsert into medico_bebe values(1,6);
INsert into medico_bebe values(7,6);
INsert into medico_bebe values(7,7);
INsert into medico_bebe values(1,8);
INsert into medico_bebe values(1,9);
INsert into medico_bebe values(5,9);

-- Medico_Mae
insert into medico_mae values(4,1);
insert into medico_mae values(3,1);
insert into medico_mae values(4,2);
insert into medico_mae values(6,2);
insert into medico_mae values(4,3);
insert into medico_mae values(6,3);
insert into medico_mae values(4,4);
insert into medico_mae values(6,4);
insert into medico_mae values(5,4);
insert into medico_mae values(4,5);
insert into medico_mae values(3,5);
insert into medico_mae values(1,5);		