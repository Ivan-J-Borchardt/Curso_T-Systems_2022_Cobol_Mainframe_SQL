      *Divisao de identificacao
       identification division.
       program-id. "Lista3E7".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 26/09/2022.
       date-compiled. 26/09/2022.


      *Divisao de configuracao do ambiente
       environment division.
       configuration section.
	    special-names. decimal-point is comma.

      *------- Declaracao de recursos externos
       input-output section.
       file-control.
       i-o-control.



      *Declaracao de variaveis
       data division.
       file section.


      *Variaveis do programa
       working-storage section.

      *Variavel alfanumerica de 25 caracteres
       01  wk-valores-monetarios.
	   05  wk-salario-bruto			 pic 9(006)V99.
	   05  wk-salario-liquido		 pic 9(006)V99.
	   05  wk-desconto			 pic 9(006)V99.

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *	   Receber salarioBruto
	   display "Informe o Salario Bruto:"
	   accept wk-salario-bruto

      *	   Calcular o Desconto
	   if wk-salario-bruto <= 600,00 then
	       move  0	    to	wk-desconto
	   end-if

	   if  wk-salario-bruto > 600,00
	   and wk-salario-bruto <= 1200,00 then
	       compute wk-desconto = wk-salario-bruto * 0,25
	   end-if

	   if  wk-salario-bruto > 1200,00
	   and wk-salario-bruto <= 2000,00 then
	       compute wk-desconto = wk-salario-bruto * 0,30
	   end-if

	   if  wk-salario-bruto > 2000,00 then
	       compute wk-desconto = wk-salario-bruto * 0,35
	   end-if

      *	   Calcular o Salario Liquido
	   compute wk-salario-liquido = wk-salario-bruto - wk-desconto

      *	   Exibir O Salario
	   display "Salario Liquido: " wk-salario-liquido

	   stop run.
