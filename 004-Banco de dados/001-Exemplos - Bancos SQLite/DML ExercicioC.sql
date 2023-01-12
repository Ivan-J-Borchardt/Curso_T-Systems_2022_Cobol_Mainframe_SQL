

-- Tabela Sala 
--Inserindo dados na Tabela 
-------------------------
---- Sintaxe completa 
insert into sala (id, apelido, qtd_lugares) values (1, 'Germania', 25); 
insert into sala (id, qtd_lugares) values (2, 25); 

---- Sintaxe Resumida 
insert into sala values (3, 'Pomerania', 35); 

insert into sala values (10, 'Curitiba', 50); 


-- Selecionando dados 
---------------------
select * from sala; 

--
 select id, 
        apelido  
   from sala
  where id >= 2
    and (qtd_lugares = 35 or qtd_lugares = 25); 

--	
select id, 
        apelido  
   from sala
  where id >= 2
    and not(qtd_lugares = 35 or qtd_lugares = 25); 

--
select id, 
        apelido  
   from sala
  where id >= 2
    and qtd_lugares <> 35;

--

select * 
   from sala 
  where id between 2 and 3;  
  
-- 
select * 
   from sala 
  where id in (1, 3, 10);  
  
-- 
select * 
   from sala 
  where apelido like '%ania' ;   
  
select * 
   from sala 
  where apelido like '%iti%' ;   
	
	
-- Deletar dados 
------------------
delete from sala; 
delete from sala where qtd_lugares = 35;

-- Alterar dados 
------------------
update sala set apelido = 'Florianopolis' where id = 2;

update sala set apelido = 'Sao Paulo', qtd_lugares = 100 where id = 2;

