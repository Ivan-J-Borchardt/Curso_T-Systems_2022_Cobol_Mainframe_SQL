      *Divisao de identificacao
       identification division.
       program-id. "Lista3E6".
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
       77  wk-resultado		       pic 9(006).

       77  wk-operacao		       pic x(001).




       linkage section.


       screen section.



      *Declaracao do corpo do programa
       procedure division.

	   display "Numero 1: "
	   accept wk-num1

	   display "Operacaro (+, -, *, /)"
	   accept wk-operacao

	   display "Numero 2: "
	   accept wk-num2


	   if  wk-operacao = "+" then
	       compute wk-resultado = wk-num1 + wk-num2
	   end-if

	   if  wk-operacao = "-" then
	       compute wk-resultado = wk-num1 - wk-num2
	   end-if

	   if  wk-operacao = "*" then
	       compute wk-resultado = wk-num1 * wk-num2
	   end-if


	   if  wk-operacao = "/" then
	       compute wk-resultado = wk-num1 / wk-num2
	   end-if


	   if  wk-operacao = "+"
	   or  wk-operacao = "-"
	   or  wk-operacao = "*"
	   or  wk-operacao = "/" then
	       display "Resultado: " wk-resultado
	   else
	       display "Operacao invalida!"
	   end-if




	   stop run.

