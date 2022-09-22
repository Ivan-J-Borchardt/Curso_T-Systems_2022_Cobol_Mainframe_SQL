      *Divisao de identificacao
       identification division.
       program-id. "Lista3E1".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 21/09/2022.
       date-compiled. 21/09/2022.


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

       77  wk-num1		       pic 9(003).
       77  wk-num2		       pic 9(003).



       linkage section.


       screen section.



      *Declaracao do corpo do programa
       procedure division.

	   display "Numero 1: "
	   accept wk-num1

	   display "Numero 2: "
	   accept wk-num2

	   if wk-num1 > wk-num2 then
	      display "O Primeiro numero  eh maior que o segundo "
		      wk-num1
	   else
	      display "O Segundo numero	 eh maior que o primeiro "
		      wk-num2
	   end-if


	   stop run.

