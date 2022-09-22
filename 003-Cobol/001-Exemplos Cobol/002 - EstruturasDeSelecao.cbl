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

      *Nivel 01... tambem conhecido como Item de Grupo...
      *agrupa/eh composto por outras variaveis em sub-niveis
       01  wk-numbers.
	   05  wk-num1			   pic 9(003).
	   05  wk-num2			   pic 9(003).
	   05  wk-resultado		   pic 9(006).


       01  wk-data.
	   05  wk-dia			   pic 9(002).
	   05  filler			   value "/".
	   05  wk-mes			   pic 9(002).
	   05  filler			   value "/".
	   05  wk-ano.
	       10  wk-seculo		   pic 9(002).
	       10  wk-decada		   pic 9(002).

      *N«ivel 77... eh usado para declarar variaveis avulsas
       77  wk-operacao			   pic x(001).


       linkage section.


       screen section.



      *Declaracao do corpo do programa
       procedure division.

      *------- Exemplos de como trabalhar com itens de Grupo e sub-niv.
	   display "wk-numbers " wk-numbers

	   display "Dia:"
	   accept wk-dia

	   display "Mes:"
	   accept wk-mes

	   display "Ano"
	   accept wk-ano

	   display "Data: " wk-data

	   display "Decada: " wk-decada

      *------- Perceba que as variaveis wk-num1 e wk-num2 estao sendo
      *	       utilizadas da mesma forma como antes quando as declaramos
      *	       com nivel 77...
	   display "Numero 1: "
	   accept wk-num1

	   display "Operacaro (+, -, *, /)"
	   accept wk-operacao

	   display "Numero 2: "
	   accept wk-num2

      *------- Exemplo de Estrutura de selecao EVALUATE
	   evaluate wk-operacao
	       when "+"
		   compute wk-resultado = wk-num1 + wk-num2
		   display "Resultado: " wk-resultado


	       when "-"
		   compute wk-resultado = wk-num1 - wk-num2
		   display "Resultado: " wk-resultado


	       when "*"
		   compute wk-resultado = wk-num1 * wk-num2
		   display "Resultado: " wk-resultado


	       when "/"
		   compute wk-resultado = wk-num1 / wk-num2
		   display "Resultado: " wk-resultado


	       when other
		   display "Operacao invalida!"

	   end-evaluate


      *------- Exemplo de estrutura de selecao IF. Lembre-se de que as
      *	       estruturas de selecao podem ser simples, compostas e/ou
      *	       encadeadas
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

