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
           05  wk-resultado           pic   9(03).
           05  wk-resto               pic   9(03).

       77  wk-menu                    pic   x(01) value "c".

       77  wk-opcao                   pic   x(01).
           88  wk-eh-par              value "p".
           88  wk-eh-impar            value "i".



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.



           perform until wk-menu = "s"
              display "Inicio do Intervalo:"
              accept wk-valor-ini

              display "Fim do Intervalo:"
              accept wk-valor-fim

              display "Digite p p/Par ou i p/Impar:"
              accept wk-opcao


              if wk-valor-ini > wk-valor-fim then
                   display "Valor inicial precisa ser menor que valor fi
      -            "nal"
              else
                   evaluate wk-opcao
                       when "p"
                           perform varying wk-ind from wk-valor-ini
                                           by 1
                                           until wk-ind > wk-valor-fim

                               divide wk-ind by 2 giving wk-resultado
                                                   remainder wk-resto

                               if wk-resto = 0 then
                                   display wk-ind
                               end-if
                           end-perform
                       when "i"
                           perform varying wk-ind from wk-valor-ini
                                           by 1
                                           until wk-ind > wk-valor-fim

                               divide wk-ind by 2 giving wk-resultado
                                                   remainder wk-resto

                               if wk-resto <> 0 then
                                   display wk-ind
                               end-if
                           end-perform

                       when other
                           display "Opcao invalida!(p/i)"
                   end-evaluate
              end-if

              display "Digite c p/continuar ou s p/sair"
              accept wk-menu
           end-perform









	   stop run.

