1. Selecione a mãe cujo sobrenome é 'Oliveira';
2. Selecione as cidades de código diferente de 3, 1 e 5; 
3. Selecione o DDD e Número dos telefones cujo DDD é '047'; 
4. Selecione as mães que nasceram na década de 90; 
5. Selecione as mães cujos últimos dois digitos do CPF seja igual a 13.  

-- 1 
select * 
  from mae
where nome like '%Oliveira';

-- 2 
select * 
  from cidade 
 where cod not in(1, 3, 5);
 
 -- 2 
 select * 
   from cidade 
  where cod <> 1
    and cod <> 3
    and cod <> 5; 
 
 -- 3
 select ddd, 
        numero
  from mae_telefone
 where ddd = '047'; 
 
 select * from mae_telefone; 
 
 -- 4 
 select * 
   from mae 
 where data_nasc >= '1990-01-01'
   and data_nasc <= '1999.12.31';
   
 select * 
   from mae 
 where data_nasc BETWEEN '1990-01-01' and '1999.12.31';
 
 -- 5 
 select * 
   from mae
  where cpf like '%13';  