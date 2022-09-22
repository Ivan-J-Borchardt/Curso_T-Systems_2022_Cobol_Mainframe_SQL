      *Divisao de identificacao
       identification division.
       program-id. "Lista3E2".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 22/09/2022.
       date-compiled. 22/09/2022.


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
       77  wk-num3		       pic 9(003).




       linkage section.


       screen section.



      *Declaracao do corpo do programa
       procedure division.

	   display "Numero 1: "
	   accept wk-num1

	   display "Numero 2: "
	   accept wk-num2

	   display "Numero 3: "
	   accept wk-num3


	   if  wk-num1 > wk-num2
	   and wk-num1 > wk-num3 then
	       display "O numero " wk-num1 " eh o maior"
	   else
	       if  wk-num2 > wk-num1
	       and wk-num2 > wk-num3 then
		   display "O numero " wk-num2 " eh o maior"
	       else
		   display "O numero " wk-num3 " eh o maior"
	       end-if
	   end-if


	   stop run.

