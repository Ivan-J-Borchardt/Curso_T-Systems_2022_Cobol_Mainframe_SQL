-- Forma simples de selecionar dados 
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

-- order by 
select * 
  from cidade 
 order by cidade; 

  select * 
  from cidade 
 order by cidade  desc; 
 
select * 
  from  mae 
  order by nome desc, data_nasc asc; 
  
-- Alias de coluna 
 select cod as Codigo, 
        nome as Mãe, 
        data_nasc as NAscimento
   from mae;

-- Join 
select mae.cod, 
       mae.nome, 
       endereco.cep, 
       endereco.numero
   from mae, 
        endereco 
  where mae.cod_end = endereco.cod; 

--
 select mae.cod, 
       mae.nome, 
       mae.data_nasc,
       endereco.cep, 
       endereco.numero, 
       rua.rua, 
       cidade.cidade,
       estado.estado
   from mae, 
        endereco, 
        rua, 
        cidade, 
        estado
  where mae.cod_end = endereco.cod
    and endereco.cod_rua = rua.cod
    and endereco.cod_cidade = cidade.cod
    and endereco.cod_estado = estado.cod
    and data_nasc BETWEEN '1990-01-01' and '1999.12.31'
    order by data_nasc;  
  