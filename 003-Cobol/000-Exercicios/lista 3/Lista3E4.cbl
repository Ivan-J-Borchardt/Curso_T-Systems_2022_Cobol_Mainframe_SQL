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

       linkage section.


       screen section.



      *Declaracao do corpo do programa
       procedure division.

	   display "Numero 1: "
	   accept wk-num1



	   if  wk-num1 >= 30
	   and wk-num1 <= 90 then
	       display "O numero digitado esta contido no intervalo entr
      -		       "e 30 e 90"
	   else
	      display "O numero digitado nao esta no intervalo"
	   end-if


	   stop run.

