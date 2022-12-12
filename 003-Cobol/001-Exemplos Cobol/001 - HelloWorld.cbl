      *Comentario							coment
      *8-11AreaB							aaaaaaa
      *A---12
      *Divisao de identificacao
       identification division.
       program-id. "HelloWorld".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 20/09/2022.
       date-compiled. 20/09/2022.


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
       77  wk-char                     pic x(01).

       77  wk-nome		       pic x(25).

      *Variavel numerica inteiro de 3 digitos
       77  wk-idade		       pic 9(03).

       77  wk-qtd-funcionario	       pic 9(05).

      *Variavel decimal
       77  wk-peso		       pic 9(03)V999 value 120.
       77  wk-altura		       pic 9(03)V999 value 1,82.

      *Variavel numerica com sinal
       77  wk-temperatura	       pic s9(03)V99.

       77  wk-imc		       pic 9(03)V99.


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           compute wk-char = function ord("A").

           display "wk-char " wk-char

	   display "Ola Melhor Turma de Cobol do Mundo!!!"

	   move	   "Joao" to   wk-nome
	   move	   12	  to   wk-idade

	   display "Idade: "   wk-idade

	   display "Informe seu Nome: "
	   accept wk-nome

	   display "Nome: " wk-nome

	   compute wk-imc = wk-peso / (wk-altura * wk-altura)

	   display "IMC: " wk-imc

	   if wk-imc < 30 then
	      display "Acima do peso"
	   else
	      display "Ta em forma"
	   end-if


	   stop run.

