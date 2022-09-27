      *Divisao de identificacao
       identification division.
       program-id. "Lista4E7".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 27/09/2022.
       date-compiled. 27/09/2022.


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
       01  wk-variaveis.
           05  wk-nome                          pic x(35).
           05  wk-sexo                          pic x(01).
           05  wk-valor-compra                  pic 9(06)V99.
           05  wk-valor-venda                   pic 9(06)V99.
           05  wk-taxa-desconto                 pic 9(01)V99.





       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Nome: "
           accept wk-nome

           display "Sexo m ou f:"
           accept wk-sexo

           display "Valor de compra: "
           accept wk-valor-compra

           if wk-sexo = "f" then
               move 0,13       to   wk-taxa-desconto
           else
               if wk-sexo = "m" then
                   move 0,05   to   wk-taxa-desconto
               else
                   move 0      to   wk-taxa-desconto
                   display "Sexo informado incorretamente"
               end-if
           end-if

           compute wk-valor-venda = wk-valor-compra -
                  (wk-valor-compra * wk-taxa-desconto)

           display "Valor de venta: " wk-valor-venda


	   stop run.

