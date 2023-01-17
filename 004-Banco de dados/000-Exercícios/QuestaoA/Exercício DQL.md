1. Selecione a mãe cujo sobrenome é 'Oliveira';
2. Selecione as cidades de código diferente de 3, 1 e 5; 
3. Selecione o DDD e Número dos telefones cujo DDD é '047'; 
4. Selecione as mães que nasceram na década de 90; 
5. Selecione as mães cujos últimos dois digitos do CPF seja igual a 13.  
6. Selecione o(s) Bebe(s) da Mae cujo CPF é '002.001.002-14'
7. Gere um relatório de todos os partos que ocorreram em 2022. Esse Relatorio deve trazer os dados do Parto, dados do Bebe e dados da Mae.  
8. Selecione os médicos que acompanharam o pré-natal das maes com idade superior a 30 anos. Traga além dos dados do médico, também o telefone e especialidade do médico, os dados da mae, incluíndo a idade da mae.   
9. Gere um relatório contendo todos os dados de contato os médicos (Nome do médico, especialidade, crm, telefone e endereco completo). 
10. Descubra se na tabela de bebes há irmaos cadastrados (relacione os dados dos irmaos). 
11. Gere um relatório que mostre as maes que tiveram bebes gêmeos. 
12. Busque o telefone do(s) médico(s) Obstetras que realizaram o parto do Bebe cuja mae tem o CPF '002.001.002-13'.
13. Gere um relatório que mostre os dados de todos os Bebes, suas respectivas maes e dados do parto. Ordene os resultados em ordem crescente pela data de nascimento dos bebes e decrescente pelo nome nome dos bebes. 
14. Gere um relatório que identifique inconsistencias nos relacionamentos entre as tabelas Bebe, Mae e Parto (utilize Alias para identificar as colunas). 

~~~
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
~~~