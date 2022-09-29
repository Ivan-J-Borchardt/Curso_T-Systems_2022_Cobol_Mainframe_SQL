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
       77  wk-num                     pic 9(02) value 5.


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *    enquanto/faca ate que
           display "Inicio"
           perform until wk-num > 12
               display " " wk-num
               compute wk-num  = wk-num + 1
           end-perform
           display "Acabou!"

      *    para
           display "Inicio"
           perform varying wk-num from 5 by 1 until wk-num > 12
               display " " wk-num
           end-perform
           display "Acabou!"

      *    repita
           move 5 to  wk-num
           display "Inicio"
           perform 8 times
               display " " wk-num
               compute wk-num  = wk-num + 1
           end-perform
           display "Acabou!"



	   stop run.

