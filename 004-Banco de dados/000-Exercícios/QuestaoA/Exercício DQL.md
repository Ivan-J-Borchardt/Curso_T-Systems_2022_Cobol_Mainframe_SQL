1. Selecione a mãe cujo sobrenome é 'Oliveira';
~~~
-- 1 
select * 
  from mae
where nome like '%Oliveira';
~~~

2. Selecione as cidades de código diferente de 3, 1 e 5; 
~~~
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
~~~

3. Selecione o DDD e Número dos telefones cujo DDD é '047'; 
~~~
 -- 3
 select ddd, 
        numero
  from mae_telefone
 where ddd = '047'; 
 
 select * from mae_telefone; 
~~~

4. Selecione as mães que nasceram na década de 90; 
~~~
 -- 4 
 select * 
   from mae 
 where data_nasc >= '1990-01-01'
   and data_nasc <= '1999.12.31';
   
 select * 
   from mae 
 where data_nasc BETWEEN '1990-01-01' and '1999.12.31';
~~~

5. Selecione as mães cujos últimos dois digitos do CPF seja igual a 13.  
~~~
-- 5 
 select * 
   from mae
  where cpf like '%13';  
~~~

6. Selecione o(s) Bebe(s) da Mae cujo CPF é '002.001.002-14'.
~~~
-- 6 

SELECT bebe.cod,
       bebe.nome, 
       bebe.sexo, 
       bebe.altura, 
       bebe.peso
 from bebe, mae
 where bebe.cod_mae = mae.cod
   and mae.cpf = '002.001.002-14'; 
   
SELECT bebe.cod,
       bebe.nome, 
       bebe.sexo, 
       bebe.altura, 
       bebe.peso
 from bebe, mae, parto
 where bebe.cod_parto = parto.cod
   and parto.cod_mae = mae.cod
   and mae.cpf = '002.001.002-14'; 
~~~

7. Gere um relatório de todos os partos que ocorreram em 2022. Esse Relatorio deve trazer os dados do Parto, dados do Bebe e dados da Mae. 
~~~
-- 7 

SELECT bebe.cod as cod_bebe,
       bebe.nome, 
       bebe.sexo, 
       bebe.altura, 
       bebe.peso, 
       mae.cod as cod_mae, 
       mae.nome, 
       mae.cpf, 
       parto.cod as cod_parto, 
       parto.data_parto,
       parto.hora_parto,
       parto.tipo
 from bebe, mae, parto
 where bebe.cod_parto = parto.cod
   and parto.cod_mae = mae.cod
   and parto.data_parto >= '2022-01-01'
   and parto.data_parto <= '2022-12-31'; 
~~~

8. Selecione os médicos que acompanharam o pré-natal das maes com idade superior a 30 anos. Traga além dos dados do médico, também o telefone e especialidade do médico, os dados da mae, incluíndo a idade da mae.   
~~~
-- 8 
select medico.nome, 
       medico.crm, 
       medico_tel.numero,
       especialidade.especialidade,
       mae.nome, 
       EXTRACT(YEAR from CURRENT_DATE) - EXTRACT(YEAR FROM data_nasc) as idade
   from mae, medico, medico_mae, medico_tel, especialidade
 where medico.cod = medico_mae.cod_medico
  and  mae.cod = medico_mae.cod_mae
  and  medico_tel.cod_tel = medico.cod
  and  medico.cod_esp = especialidade.cod
  and EXTRACT(YEAR from CURRENT_DATE) - EXTRACT(YEAR FROM data_nasc) > 30; 
~~~

9. Gere um relatório contendo todos os dados de contato os médicos (Nome do médico, especialidade, crm, telefone e endereco completo). 
~~~
-- 9 
select medico.nome, 
       medico.crm,
       especialidade.especialidade, 
       medico_tel.numero, 
       rua.rua, 
       endereco.numero,
       cidade.cidade, 
       endereco.cep, 
       estado.estado
  from medico, medico_tel, especialidade, endereco, rua, cidade, estado
  where medico.cod_esp = especialidade.cod
    and medico_tel.cod_tel = medico.cod
    and medico.cod_end = endereco.cod
    and endereco.cod_rua = rua.cod
    and endereco.cod_cidade = cidade.cod
    and endereco.cod_estado = estado.cod; 
~~~

10. Descubra se na tabela de bebes há irmaos cadastrados (relacione os dados dos irmaos). 
~~~
 select bebe.cod, 
        bebe.nome, 
        bebe.sexo, 
        bebe.altura, 
        parto.data_parto as data_nasc, 
        mae.nome
   from bebe, mae, parto
  where bebe.cod_parto = parto.cod
    and parto.cod_mae = mae.cod
    and bebe.cod_mae in (select cod_mae
                           from bebe
                          group by cod_mae
                          HAVING  count(*) > 1)
    order by mae.nome; 
~~~

11. Gere um relatório que mostre as maes que tiveram bebes gêmeos.
~~~
  select mae.nome 
   from mae
  where cod in (select bebe.cod_mae
                  from bebe, mae, parto
                 where bebe.cod_parto = parto.cod
                   and parto.cod_mae = mae.cod
                   and bebe.cod_mae in (select cod_mae
                                          from bebe
                                        group by cod_mae
                                        HAVING  count(*) > 1)
                  group by bebe.cod_mae
                  HAVING max(parto.data_parto) = min(parto.data_parto)); 
~~~

12. Busque o telefone do(s) médico(s) Obstetras que realizaram o parto do Bebe cuja mae tem o CPF '002.001.002-13'.
~~~
-- 12

select  medico.nome,
        medico_tel.numero
   from medico, medico_tel, especialidade, medico_parto, parto, mae
 where medico.cod_esp = especialidade.cod
   and medico.cod = medico_tel.cod_tel
   and medico_parto.cod_medico = medico.cod
   and medico_parto.cod_parto = parto.cod
   and parto.cod_mae = mae.cod
   and mae.cpf = '002.001.002-13'
   and especialidade.especialidade = 'Obstetra'; 
~~~

13. Gere um relatório que mostre os dados de todos os Bebes, suas respectivas maes e dados do parto. Ordene os resultados em ordem crescente pela data de nascimento dos bebes e decrescente pelo nome nome dos bebes. 
~~~
-- 13

SELECT bebe.cod as cod_bebe,
       bebe.nome, 
       bebe.sexo, 
       bebe.altura, 
       bebe.peso, 
       mae.cod as cod_mae, 
       mae.nome, 
       mae.cpf, 
       parto.cod as cod_parto, 
       parto.data_parto,
       parto.hora_parto,
       parto.tipo
 from bebe, mae, parto
 where bebe.cod_parto = parto.cod
   and parto.cod_mae = mae.cod
 order by parto.data_parto asc, bebe.nome desc; 
~~~

14. Gere um relatório que identifique inconsistencias nos relacionamentos entre as tabelas Bebe, Mae e Parto (utilize Alias para identificar as colunas).       
~~~
-- 14

SELECT bebe.cod as cod_bebe,
       bebe.nome, 
       bebe.sexo, 
       bebe.altura, 
       bebe.peso,
       bebe.cod_mae as cod_mae_bebe,
       mae.cod as cod_mae, 
       mae.nome, 
       mae.cpf, 
       parto.cod as cod_parto, 
       parto.data_parto,
       parto.hora_parto,
       parto.tipo,
       parto.cod_mae as cod_mae_parto
 from bebe, mae, parto
 where bebe.cod_parto = parto.cod
   and parto.cod_mae = mae.cod
   and parto.cod_mae <> bebe.cod_mae;
~~~

15. Crie um relatório que apresente a quantidade de bebês meninas. 
~~~
select count(*) from bebe where sexo = 'f'; 
~~~

16. Busque o bebê mais alto. 
~~~
~~~
17. Busque o bebê com o menor peso. 
~~~

~~~
18. Precisa se saber quantos partos o médico cujo crm é '234E22' realizou. 
~~~
select count(*)
 from parto, medico, medico_parto
where medico_parto.cod_parto = parto.cod
  and medico_parto.cod_medico = medico.cod
  and medico.crm = '234E22';
~~~
19. Gere um relatório contendo a quantidade de partos que o médico de crm '234E22' realizou por ano. Ordene os resultados pela data em ordem decrescente. 
~~~
select EXTRACT(YEAR FROM parto.data_parto), count(*) 
 from parto, medico, medico_parto
where medico_parto.cod_parto = parto.cod
  and medico_parto.cod_medico = medico.cod
  and medico.crm = '234E22'
  group by EXTRACT(YEAR FROM parto.data_parto); 
~~~

20. A clinica está no limite de sua capacidade de atendimento, por isso o comite executivo decidiu que irá abrir uma filial na cidade de onde vem o maior número de mães. Gere um relatório que apresente a quantidade de mães por cidade. 
~~~
select  cidade.cidade, count(cidade.cidade)
 from mae, cidade, endereco
 where mae.cod_end = endereco.cod
   and endereco.cod_cidade = cidade.cod
 group by cidade.cidade; 
~~~

21. Crie um relatório que apresente a média geral de peso dos bebês. 
~~~
select avg(peso) as media from bebe;   
~~~

22. Crie um relatório que apresente a média de peso dos bebês agrupado por ano. 
~~~
select avg(peso) as media 
  from bebe, parto
  where bebe.cod_parto = parto.cod
  group by EXTRACT(YEAR FROM parto.data_parto);
~~~

23. Nosso banco de dados possui um problema grave de normalizacao. Há duas tabelas de telefone o que pode levar a redundancia de dados. Analise a situacao e proponha uma solucao. 
24. O departamento de BI precisa de uma tabela que mescle os dados dos bebes e maes para uma analise complexa. 
    Crie uma query para criar um script para  inserir os dados nessa nova tabela (selecionando os dados das tabelas mae e bebe). 