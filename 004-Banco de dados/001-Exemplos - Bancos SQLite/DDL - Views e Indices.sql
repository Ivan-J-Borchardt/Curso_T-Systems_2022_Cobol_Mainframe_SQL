-- Views 
create view v_medico2 as 
    select cod,  
		   nome, 
		   cod_esp  
      from medico
	  where cod_esp <> 2; 
	 
	
create view v_parto_mae as 
    select parto.cod, 
	       parto.data_parto, 
		   mae.nome
	 from parto, mae 
	 where parto.cod_mae = mae.cod;
	 
--select * from v_parto_mae where cod = 5; 

--Indices 

explain query plan 	 
 select * from medico where crm = '123R3'; 
	 
 
 create index i_medico_crm on medico(crm); 
 commit; 