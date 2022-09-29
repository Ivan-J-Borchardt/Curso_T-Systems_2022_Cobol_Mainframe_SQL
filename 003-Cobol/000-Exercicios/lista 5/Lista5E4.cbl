      *Divisao de identificacao
       identification division.
       program-id. "Lista5E1".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 28/09/2022.
       date-compiled. 28/09/2022.


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
       77  wk-num                     pic s9(03) value 100.


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *    enquanto/faca ate que
           display "Inicio"
           perform until wk-num less then 0
               display " " wk-num
               compute wk-num  = wk-num - 5
           end-perform
           display "Acabou!"

      *    para
           display "Inicio"
           perform varying wk-num from 100 by -5
                     until wk-num less than 0
               display " " wk-num
           end-perform
           display "Acabou!"

      *    repita
           move 100 to  wk-num
           display "Inicio"
           perform 21 times
               display " " wk-num
               compute wk-num  = wk-num - 5
           end-perform
           display "Acabou!"


	   stop run.

