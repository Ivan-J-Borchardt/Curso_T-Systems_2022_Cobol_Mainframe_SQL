      *Divisao de identificacao
       identification division.
       program-id. "Lista5E7".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 03/10/2022.
       date-compiled. 03/10/2022.


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

       01  wk-numeros.
           05  wk-valor-ini           pic  s9(03).
           05  wk-valor-fim           pic  s9(03).
           05  wk-incremento          pic  s9(03).
           05  wk-ind                 pic  s9(03).

       77  wk-menu                    pic   x(01) value "c".



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.



           perform until wk-menu = "s"
              display "Inicio do intervalo:"
              accept wk-valor-ini

              display "Fim do Intervalo:"
              accept wk-valor-fim

              display "Incremento:"
              accept wk-incremento

              if wk-valor-fim < wk-valor-ini then
                 display "Valor final nao pode ser menor do que o valor
      -          "inicial"
              else
                 if wk-incremento = 0 then
                    display "Incremento nao pode ser zero"
                 else
                    perform varying wk-ind from wk-valor-ini
                                               by wk-incremento
                                            until wk-ind > wk-valor-fim
                        display wk-ind
                    end-perform
                 end-if
              end-if



              display "Digite c p/continuar ou s p/sair"
              accept wk-menu
           end-perform









	   stop run.

