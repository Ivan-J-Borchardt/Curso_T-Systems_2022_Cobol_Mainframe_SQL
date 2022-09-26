      *Divisao de identificacao
       identification division.
       program-id. "Lista3E8".
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
	   05  wk-valor-compra			 pic 9(006)V99.
	   05  wk-valor-venda			 pic 9(007)V99.
	   05  wk-taxa-lucro			 pic 9(001)V999.


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *	   Receber Valor Compra
	   display "Informe o valor de compra:"
	   accept wk-valor-compra

      *	   Descobrir Faixa de lucro
	   if wk-valor-compra <= 20,00 then
	       move 1,50     to	    wk-taxa-lucro
	   else
	       move 1,35     to	    wk-taxa-lucro
	   end-if


      *	   Calcular o Valor de Venda
	   compute wk-valor-venda = wk-valor-compra * wk-taxa-lucro

      *	   Exibir o resultado
	   display "Valor de venda: " wk-valor-venda

	   stop run.
