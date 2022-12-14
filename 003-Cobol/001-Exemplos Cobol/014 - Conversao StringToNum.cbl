      *Divisao de identificaco
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



       77  wk-num                              pic 9(03).
       77  wk-string                           pic x(03) value "123".

      *Uso de redefines para conversao de tipo e/ou aplicacao de mascara
       01  wk-variavel.
           05  wk-temp-x                       pic x(03) value "003".
           05  wk-temp-n  redefines wk-temp-x  pic 9(03).
           05  wk-temp-d  redefines wk-temp-x  pic zz9.

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *    Convertendo um Pic X de conteudo numerico para Pic 9...
           if wk-string is numeric then
               move wk-string      to    wk-num
           end-if.

           add 1 to wk-num.

           display wk-num.

      *    Teste com variavel redefinida

           display "Temperatura N: " wk-temp-n

           add 10 to wk-temp-n

           display "Temperatura X: " wk-temp-x


	   stop run.

