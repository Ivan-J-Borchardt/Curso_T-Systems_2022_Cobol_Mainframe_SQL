      *Divisao de identificacao
       identification division.
       program-id. "Lista6E2".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 29/09/2022.
       date-compiled. 29/09/2022.


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
           03  wk-ini                     pic s9(06).
           03  wk-fim                     pic s9(06).
           03  wk-num-teste               pic s9(06).
           03  wk-resultado               pic  9(06).
           03  wk-resto                   pic  9(06).
               88  wk-num-eh-divisivel    value 0.
           03  wk-ind                     pic s9(06).


       77  wk-flag-primos                 pic x(01).
           88  wk-num-eh-primo            value "S".
           88  wk-num-nao-eh-primo        value "N".

       77  wk-opcao                       pic x(01).
           88  wk-sair                    value "s".

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           perform until wk-sair
      *
               display "Inicio do Intervalo: "
               accept wk-ini

               display "Fim do Intervalo:"
               accept wk-fim

               perform varying wk-num-teste from wk-ini by 1
                       until wk-num-teste > wk-fim

      *            move "S"      to     wk-flag-primos
                   set wk-num-eh-primo  to true

      *            descobre se o wk-num-teste eh primo
                   perform varying wk-ind from 2 by 1
                               until wk-ind = wk-num-teste
      *                            or wk-flag-primos  equals "N"
                                   or wk-num-nao-eh-primo

                       divide  wk-num-teste  by wk-ind
                               giving wk-resultado
                               remainder wk-resto

      *                if wk-resto equal zero then
                       if wk-num-eh-divisivel then
      *                    move "N"     to    wk-flag-primos
                           set wk-num-nao-eh-primo to true
                       end-if

                   end-perform

      *            if wk-flag-primos equal "S" then
                   if wk-num-eh-primo  then
                       display "Num: " wk-num-teste "eh primo"
                   end-if
               end-perform

               display "Digite `s` para sair ou `c` para continuar"
               accept wk-opcao

           end-perform

      *----- Teste de Mesa.... Faça, sempre!
      *    wk-ini: 4       -    wk-fim: 7
      *    wk-num-teste 8
      *    wk-ind 7
      *    wk-flag-primos: S

      *    wk-resultado: 1     wk-resto: 1






	   stop run.

