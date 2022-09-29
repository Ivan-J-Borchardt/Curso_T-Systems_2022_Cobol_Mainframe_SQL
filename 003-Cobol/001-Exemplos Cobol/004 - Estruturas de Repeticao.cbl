      *Divisao de identificacao
       identification division.
       program-id. "EstruturasRepeticao".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 26/09/2022.
       date-compiled. 26/09/2022.


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

       77  wk-menu                        pic x(01).

       77  wk-ind                         pic s9(03).


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *---    Estrutura de Repeticao "Faca ate que"
           perform until wk-num1 > 10
               display "Numero:  " wk-num1
               compute wk-num1 = wk-num1 + 1
           end-perform

           move 0    to    wk-num1
           perform until wk-num1 greater than 10
               display "Numero:  " wk-num1
               compute wk-num1 = wk-num1 + 1
           end-perform


           perform until wk-menu = "s"
               display "Numero:  " wk-num1
               compute wk-num1 = wk-num1 + 1
               display "Digite s para sair"
               accept wk-menu
           end-perform

      *---    Estrutura de repeticao "Para"     iteracao
           perform varying wk-ind from 1 by 1 until wk-ind > 20
               display "Wk-ind: " wk-ind
           end-perform

      *---- Incremento com passo 2
           perform varying wk-ind from 9 by 2 until wk-ind > 20
               display "Wk-ind: " wk-ind
           end-perform

      *---- Decremento em passo -5
           perform varying wk-ind from 100 by -5 until wk-ind < 0
               display "Wk-ind: " wk-ind
           end-perform



      *---- Condicao de para composta
           perform varying wk-ind from 1 by 1 until wk-ind > 20
                                                 or wk-menu equal "z"
               display "Wk-ind: " wk-ind
               display "Digite z para sair"
               accept wk-menu
           end-perform


      *---- Repita n vezes
           perform 5 times
              display "passou aqui..."
           end-perform




	   stop run.

