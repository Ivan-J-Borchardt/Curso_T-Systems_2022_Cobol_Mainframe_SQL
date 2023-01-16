--
select * from mae; 

select cod, nome from mae; 

-- Operadores Relacionais =, >, <, >=, >=, in, between, like, <>  
select cod, 
       nome 
  from mae
 where cod in (3, 4, 2);   

select cod, 
      nome, 
where cod between 2 and 5; 

select cod, 
      nome
 from mae 
  where nome like 'A%'; 

-- Operadores Lógicos  OR, AND, NOT 

select * 
  from mae 
 where cod > 2
   or data_nasc > '01/01/2000'; 

select * 
  from mae 
 where cod > 2
   and data_nasc < '2000-01-01'; 

select * 
  from mae 
 where cod > 2
   and not(data_nasc > '01/01/2000'); 