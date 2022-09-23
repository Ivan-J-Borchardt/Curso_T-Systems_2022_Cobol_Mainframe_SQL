      *Divisao de identificacao
       identification division.
       program-id. "CalculosAritmeticos".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 23/09/2022.
       date-compiled. 23/09/2022.


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

       01  wk-numbers.
	   05  wk-num1			  pic 9(05) value 3.
	   05  wk-num2			  pic 9(05) value 2.
	   05  wk-resultado		  pic s9(10)v999.
	   05  wk-resultado2		  pic 9(05).
	   05  wk-resto			  pic 9(02).




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *	   Operadores aritmeticos: (+, -, *, /, **)

      *	   potenciacao
	   compute wk-resultado = wk-num1 ** wk-num2
	   display "Resultado 1: " wk-resultado


      *	   calculando a raiz n-esima de wk-num1
	   compute wk-resultado = wk-num1 ** (1/wk-num2)
	   display "Resultado 2: " wk-resultado

      *	   Divisao pegando o resto, note que a variavel wk-resultado2
      *	   precisa ser um numero inteiro
	   divide wk-num1 by wk-num2
	       giving wk-resultado2
	       remainder wk-resto

	   display "Resultado 3: " wk-resultado2
	   display "Resto     3: " wk-resto

	   stop run.

