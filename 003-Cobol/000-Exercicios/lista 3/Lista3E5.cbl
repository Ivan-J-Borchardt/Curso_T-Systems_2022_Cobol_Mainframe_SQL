      *Divisao de identificacao
       identification division.
       program-id. "Lista3E5".
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

       77  wk-menor		       pic 9(003).
       77  wk-mediano		       pic 9(003).
       77  wk-maior		       pic 9(003).




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


	   move wk-num1	     to	   wk-menor
	   move wk-num1	     to	   wk-mediano
	   move wk-num1	     to	   wk-maior


	   if  wk-num2 < wk-menor then
	       move wk-num2	to     wk-menor
	   end-if

	   if  wk-num2 > wk-maior then
	       move wk-num2	to     wk-maior
	   end-if

	   if  wk-num3 < wk-menor then
	       move wk-num3	to     wk-menor
	   end-if

	   if  wk-num3 > wk-maior then
	       move wk-num3	to     wk-maior
	   end-if

	   if wk-menor <>  wk-num2 then
	       if wk-maior <> wk-num2 then
		   move wk-num2	   to	 wk-mediano
	       end-if
	   end-if

	   if wk-menor <>  wk-num3 then
	       if wk-maior <> wk-num3 then
		   move wk-num3	   to	 wk-mediano
	       end-if
	   end-if

	   display wk-maior " - "  wk-mediano " - " wk-menor





	   stop run.

